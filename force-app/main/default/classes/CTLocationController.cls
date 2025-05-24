public with sharing class CTLocationController {

    //Get recent status changes for locations
    public static list<Location__c> getRecentStatusChanges(){
        List<Location__c> locations = [SELECT Id, Name, Status__c, Address__c, Pincode__c, Red_Score__c, Status_Update_Date__c 
                                        FROM Location__c
                                        ORDER BY Status_Update_Date__c DESC NULLS LAST
                                        LIMIT 100];
        return locations;
    }

    //search locations by Id, token or address
    public static list<Location__c> searchLocations(String searchTerm){
        searchTerm = searchTerm + '%';  
        List<Location__c>  locations= [SELECT Id, Name, Status__c, Address__c, Pincode__c, Red_Score__c, Status_Update_Date__c 
                            FROM Location__c
                            WHERE Name LIKE :searchTerm OR Pincode__c LIKE :searchTerm OR Address__c LIKE :searchTerm
                            ORDER BY Status_Update_Date__c DESC NULLS LAST];
        return locations;
    }

    //get a location by Id
    public static Location__c getLocationById(String locationId){
        List<Location__c> locations = [SELECT Id, Name, Status__c, Address__c, Pincode__c, Red_Score__c, Status_Update_Date__c 
                                        FROM Location__c
                                        WHERE Id = :locationId];
         if (locations!= NULL && locations.size()>0){
             return locations[0];
         }
         return null;
        }

    
    //get the location count per health status - query location records to find number of location in each health status
    public static map<String, Integer> getStatusCount(){
        //create a map to store staus and count
        map<String, Integer> results = new  map<String, Integer>();
        for(AggregateResult res : [SELECT Status__c, COUNT(Id) statusCount FROM Location__c GROUP BY Status__c]){
            //store health status and count in maps
            string healthStatus = String.valueOf(res.get('Status__c'));
            Integer totalCount = Integer.valueOf(res.get('statusCount'));
            results.put(healthStatus, totalCount);
        }  
        return results;                          
    }
     
}