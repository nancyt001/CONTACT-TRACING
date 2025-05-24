public with sharing class CTPersonController {

    public static string getToken(String phoneNumber){
        Blob phoneBlob = Blob.valueOf(phoneNumber);
        Blob phoneHash = Crypto.generateDigest('MD5', phoneBlob);
        // Convert the hash to a base64 string
        // This is the token that will be used to identify the user
        String phoneHashString = EncodingUtil.base64Encode(phoneHash);
        return phoneHashString;
    }

    //get 100 people with recent health changes
    public static list <Person__c> getRecentHealthChanges(){
        List<Person__c> people = [SELECT Id, Name, Mobile__c, Token__c, Status_Update_Date__c, Health_Status__c
                                  FROM Person__c 
                                  ORDER BY Status_Update_Date__c DESC
                                  NULLS LAST
                                  LIMIT 100];
        return people;
    }

    //search people by name, token or mobile phone depending on search term
    public static list <Person__c> searchPeople( String searchTerm){
        searchTerm = searchTerm + '%';
        List<Person__c> people = [SELECT Id, Name, Mobile__c, Token__c, Status_Update_Date__c, Health_Status__c, OwnerId, LastModifiedById, CreatedById
                                  FROM Person__c
                                  WHERE Name LIKE :searchTerm OR Mobile__c LIKE :searchTerm OR Token__c LIKE :searchTerm
                                  ORDER BY Status_Update_Date__c DESC NULLS LAST];
        return people;
    }

    //get a person record by id
    public static Person__c getPersonById(String personId){
        LIST<Person__c> person = [SELECT Id, Name, Mobile__c, Token__c, Status_Update_Date__c, Health_Status__c, OwnerId, LastModifiedById, CreatedById
                            FROM Person__c 
                            WHERE Id = :personId];
        if (person!= null && person.size()>0){
            return person[0];
        }
        return null;
    }


    //get get health status count - query person records to find number of people in each health status
    public static map<String, Integer> getHealthStatusCount(){
        //create a map to store staus and count
        map<String, Integer> results = new  map<String, Integer>();
        for(AggregateResult res : [SELECT Health_Status__c, COUNT(Id) statusCount FROM Person__c GROUP BY Health_Status__c]){
            //store health status and count in maps
            string healthStatus = String.valueOf(res.get('Health_Status__c'));
            Integer totalCount = Integer.valueOf(res.get('statusCount'));
            results.put(healthStatus, totalCount);
        }  
        return results;                          
    }

    
}