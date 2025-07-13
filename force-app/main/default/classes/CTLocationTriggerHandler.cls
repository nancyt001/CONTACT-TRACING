public with sharing class CTLocationTriggerHandler {
    
    //before insert handler to do -
    //set the location status as green
    public static void beforeInsertHandler(list<Location__c> newLocations){
        for(Location__c location : newlocations){
            location.Status__c ='Green';
        }
    }

    //before update handler to do -
    //set the status update date as today when status is changed
    public static void beforeUpdateHandler(list<Location__c> newLocations, map<Id, Location__c> oldLocationsMap){
        for(Location__c location : newlocations){
            if(location.Status__c != oldLocationsMap.get(location.Id).Status__c){
                location.Status_Update_Date__c = Date.Today();
            }
        }
    }

    //after update handler to do -
    //mark all people yellow who have visited a location in last 10 days and do not have red or orange status when location status is changed to red
    public static void afterUpdateHandler(list<Location__c> newLocations, map<Id, Location__c> oldLocationsMap){
        set<Id> statusChange = new set<Id>();
        for(Location__c location : newlocations){
            if(location.Status__c == 'Red' && oldLocationsMap.get(location.Id).Status__c !='Red'){
                statusChange.add(location.Id);    
            }
        }
        list<Location_Tracing__c> traces =  CTLocationTracingController.getLocationsByLocationIds(statusChange);        
        for (Location_Tracing__c trace : traces){
            peopleIds.add(trace.Person__c);
        }
        CTPersonController.updatePeopleStatus(peopleIds);
    }
}