public with sharing class CTPeopleTracingController {

    public static list<People_Tracing__c> getTraces(String personId){
        return [SELECT Person_1__c, Person_2__c,Contact_Date__c, Id, Person_1__r.Health_Status__c, Person_1__r.Token__c, Person_2__r.Health_Status__c, Person_2__r.Token__c
                FROM People_Tracing__c 
                WHERE Person_1__c =: personId OR Person_2__c =:personId
                ORDER BY Contact_Date__c DESC];
    }


    public static list<People_Tracing__c> checkDuplicates(list<People_Tracing__c> peopleTraces){
        //make sets for unique person ids in peopletraces
        set<Id> personIds = new set<Id>();
        for (People_Tracing__c pt : peopleTraces){
            personIds.add(pt.Person_1__c);
            personIds.add(pt.Person_2__c);
        }

        //create a list of existing records with above person 1 and person 2 ids
        list<People_Tracing__c> existingRecords = [SELECT Person_1__c, Person_2__c
                                                    FROM People_Tracing__c 
                                                    WHERE Person_1__c IN : personIds  OR  Person_2__c IN : personIds] ;
        //create a list of duplicates
        list<People_Tracing__c> duplicates = new list<People_Tracing__c> ();

        if (existingRecords != null &&  existingRecords.size() >0){

            //make a map for person1 and person 2 
            map<Id, set<Id>> mapofExistingRecords = new map<Id, set<Id>>();
            for (People_Tracing__c pt : existingRecords){
                if (!mapofExistingRecords.containsKey(pt.Person_1__c)){
                    mapofExistingRecords.put(pt.Person_1__c, new set<Id>());
                }
                //build map for person 2
                if (!mapofExistingRecords.containsKey(pt.Person_2__c)){
                    mapofExistingRecords.put(pt.Person_2__c, new set<Id>());
                }
                mapofExistingRecords.get(pt.Person_1__c).add(pt.Person_2__c);
                mapofExistingRecords.get(pt.Person_2__c).add(pt.Person_1__c);
            }
            
            //get duplicates from map of existingRecords
            for (People_Tracing__c pt: peopleTraces){
                if ((mapofExistingRecords.containsKey(pt.Person_1__c) && mapofExistingRecords.get(pt.Person_1__c).contains(pt.Person_2__c)) ||
                      (mapofExistingRecords.containsKey(pt.Person_2__c) && mapofExistingRecords.get(pt.Person_2__c).contains(pt.Person_1__c))  ){
                    duplicates.add(pt);
                }
            }
        }
        return duplicates;
                                            
    }

}