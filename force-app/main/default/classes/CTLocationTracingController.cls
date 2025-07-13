public with sharing class CTLocationTracingController {
    //get visitors by location Id 
    public static list<Location_Tracing__c> getVisitors(String locationId){
        return [SELECT Person__c, Location__c, Visit_Date__c, Id, Person__r.Token__c, Person__r.Health_Status__c
                FROM Location_Tracing__c 
                WHERE Id =:locationId 
                ORDER BY Visit_Date__c DESC];
    }

    //get locations by person Ids
    public static list<Location_Tracing__c> getLocationsByPersonIds(Set<Id> personIds){
        return [SELECT Person__c, Location__c, Visit_Date__c, Id
                FROM Location_Tracing__c 
                WHERE Person__r.Id IN :personIds AND Visit_Date__c = LAST_N_DAYS:10];
    }

    //get locations by location Id
    public static list<Location_Tracing__c> getLocationsByLocationIds(Set<Id> locationIds){
        return [SELECT Person__c, Location__c, Visit_Date__c, Id
                FROM Location_Tracing__c 
                WHERE Location__r.Id IN :locationIds AND Visit_Date__c = LAST_N_DAYS:10 AND Person__r.Health_Status__c = 'Green'];
    }


    public static list<Location_Tracing__c> checkDuplicates(list<Location_Tracing__c> newlocationTraces){

        //store unique location ids
        set<Id> locationIds = new set<Id>();
        //store unique person ids
        set<Id> personIds = new set<Id>();
        for (Location_Tracing__c trace : newlocationTraces){
            locationIds.add(trace.Location__c);
            personIds.add(trace.Person__c);
        }

        //make a list of existing records with above location and person ids
        list<Location_Tracing__c> existingRecords  =[SELECT Id, Location__c, Person__c 
                                                        FROM Location_Tracing__c
                                                        WHERE Location__c in :locationIds AND Person__c in : personIds];

        //map of location id and person ids
        Map<Id,Set<Id>> existingLocationTraces = new map <Id,Set<Id>>();

        //list of duplicate records
        list<Location_Tracing__c> duplicates = new list<Location_Tracing__c>();

        //iterate over existing records to find duplicates
        if (existingRecords != null && existingRecords.size()>0){

            //make a map of existing location traces
        for(Location_Tracing__c loctrace : existingRecords){ 
            if (!existingLocationTraces.containsKey(locTrace.Location__c)) {
                existingLocationTraces.put(locTrace.Location__c, new set<Id>());
            }
            existingLocationTraces.get(locTrace.Location__c).add(locTrace.Person__c);    
        }

        //check for duplicates. check if map has location id as key and then check if the value of person is present for that location id
        for(Location_Tracing__c loctrace : newlocationTraces ){
            if (existingLocationTraces.containsKey(locTrace.Location__c) && existingLocationTraces.get(locTrace.Location__c).contains(locTrace.Person__c)){
                duplicates.add(loctrace);
            }   
        }
        }
        return duplicates;
        
    }    
}