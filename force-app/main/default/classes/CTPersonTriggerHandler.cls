public with sharing class CTPersonTriggerHandler {

    
    public static void beforeInsertHandler(list<Person__c> newPersons){
        for(Person__c person : newPersons){
            //method to set the status as green 
            person.Health_Status__c ='Green';
            //set the token for a person before it is inserted
            person.Token__c =CTPersonController.getToken(person.Mobile__c);
            //set status update date as today
            //person.Status_Update_Date__c = Date.today();
        }    
    }

    
    public static void beforeUpdateHandler(list<Person__c> newPersons, Map<Id,Person__c> oldPersonsMaps){
        for(Person__c person : newPersons){
            //method to update the healthstatus update date when status is changed 
            if(person.Health_Status__c != oldPersonsMaps.get(person.Id).Health_Status__c){
                person.Status_Update_Date__c = Date.today();
            }
        }    
    }


    public static void afterUpdateHandler(list<Person__c> newPersons, Map<Id,Person__c> oldPersonsMaps){
        Set<Id> statusChange = new Set<Id>();
        Set<Id> redStatus = new Set<Id>();
        for(Person__c person : newPersons){ 
            if(person.Health_Status__c != oldPersonsMaps.get(person.Id).Health_Status__c){
                statusChange.add(person.Id);
            }
            if(person.Health_Status__c == 'Red' && oldPersonsMaps.get(person.Id).Health_Status__c !='Red'){
                redStatus.add(person.Id);
            }         
        }
        
        set<Id> processedIds = new Set<Id>();
        processedIds.addAll(redStatus);

        Set<Id> orangeStatus = new Set<Id>();
        Set<Id> yellowStatus = new Set<Id>();

        list<Person__c> personToUpdate = new list<Person__c>();

        //add the cohabitants
        orangeStatus.addAll(CTPersonController.getCohabitants(redStatus, processedIds));
        //get the primary contacts
        set<Id> primaryContacts = CTPersonController.getPrimaryContacts(redStatus, processedIds);
        //add the primary contacts
        orangeStatus.addAll(primaryContacts);
        //add the neighbours
        yellowStatus.addAll(CTPersonController.getNeighbours(redStatus, processedIds));
        //add the secondary contacts
        yellowStatus.addAll(CTPersonController.getsecondaryContacts(primaryContacts, processedIds));


        for (Id pid : orangeStatus){
            personToUpdate.add(new Person__c (Id = pid, Health_Status__c ='Orange'));
        }
        for (Id pid : yellowStatus){
            personToUpdate.add(new Person__c (Id = pid, Health_Status__c ='Yellow'));
        }
        
        if (personToUpdate.size() > 0){
            update personToUpdate;
        }


        List<Location_Tracing__c> locationTraces = CTLocationTracingController.getLocationsByPersonIds(statusChange);
        if(locationTraces.size()>0){
            set<Id> locationIds = new Set<Id>();
            for(Location_Tracing__c trace : locationTraces){
                locationIds.add(trace.Location__c);
            }
            CTLocationController.updateRedScore(locationIds)
        }
    }

}