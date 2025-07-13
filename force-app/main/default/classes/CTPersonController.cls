public with sharing class CTPersonController {
    //get a token for a person
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

    //get the cohabitants of a person with status as green and yellow
    public static set<Id> getCohabitants(set<Id> personIds, set<Id> processedIds){
        // Only consider people with these health statuses
        List<String> healthStatus = new list<String>{'Yellow', 'Green'};
        // Query People_Tracing__c records where either person is in the input set,
        // the contact type is 'Cohabitant', and either person has a valid health status
        list<People_Tracing__c> peopleTraces = [SELECT Id, Person_2__c, Person_1__c 
                                                    FROM People_Tracing__c 
                                                    WHERE (Person_1__c IN :personIds OR Person_2__c IN :personIds)
                                                    AND Contact_Type__c ='Cohabitant'
                                                    AND (Person_1__r.Health_Status__c IN :healthStatus OR Person_2__r.Health_Status__c IN :healthStatus)];
        set<Id> cohabitants = new set<Id>();
        // For each tracing record, add the other person (not in the input set) to the result set
        for (People_Tracing__c pt : peopleTraces){
            if (!processedIds.contains(pt.Person_1__c)){
                cohabitants.add(pt.Person_1__c);
                processedIds.add(pt.Person_1__c);
            }
            if (!processedIds.contains(pt.Person_2__c)){
                cohabitants.add(pt.Person_2__c);
                processedIds.add(pt.Person_2__c);
            }
        }

        // Return the set of cohabitant IDs
        return cohabitants;
    }


    //get the neighbours of a person with status as green and yellow
    public static set<Id> getNeighbours(set<Id> personIds, set<Id> processedIds){
        // Only consider people with these health statuses
        List<String> healthStatus = new list<String>{'Yellow', 'Green'};
        // Query People_Tracing__c records where either person is in the input set,
        // the contact type is 'Neighbour', and either person has a valid health status
        list<People_Tracing__c> peopleTraces = [SELECT Id, Person_2__c, Person_1__c 
                                                    FROM People_Tracing__c 
                                                    WHERE (Person_1__c IN :personIds OR Person_2__c IN :personIds)
                                                    AND Contact_Type__c ='Neighbour'
                                                    AND (Person_1__r.Health_Status__c ='Green' OR Person_2__r.Health_Status__c ='Green')];
        set<Id> neighbours = new set<Id>();
        // For each tracing record, add the other person (not in the input set) to the result set
        for (People_Tracing__c pt : peopleTraces){
            if (!processedIds.contains(pt.Person_1__c)){
                neighbours.add(pt.Person_1__c);
                processedIds.add(pt.Person_1__c);
            }
            if (!processedIds.contains(pt.Person_2__c)){
                neighbours.add(pt.Person_2__c);
                processedIds.add(pt.Person_2__c);
            }
        }

        // Return the set of neighbours IDs
        return neighbours;
    }


    //get the primary contacts of a person with status as green and yellow
    public static set<Id> getPrimaryContacts(set<Id> personIds, set<Id> processedIds){
        List<String> healthStatus = new list<String>{'Yellow', 'Green'};
        // Query People_Tracing__c records where either person is in the input set,
        // the contact type is 'Other', and either person has a valid health status
        list<People_Tracing__c> peopleTraces = [SELECT Id, Person_2__c, Person_1__c 
                                                    FROM People_Tracing__c 
                                                    WHERE (Person_1__c IN :personIds OR Person_2__c IN :personIds)
                                                    AND Contact_Type__c ='Other'
                                                    AND (Person_1__r.Health_Status__c IN :healthStatus OR Person_2__r.Health_Status__c IN :healthStatus)
                                                    AND Contact_Date__c =LAST_N_DAYS:10];
        set<Id> primaryContacts = new set<Id>();
        // For each tracing record, add the other person (not in the input set) to the result set
        for (People_Tracing__c pt : peopleTraces){
            if (!processedIds.contains(pt.Person_1__c)){
                primaryContacts.add(pt.Person_1__c);
                processedIds.add(pt.Person_1__c);
            }
            if (!processedIds.contains(pt.Person_2__c)){
                primaryContacts.add(pt.Person_2__c);
                processedIds.add(pt.Person_2__c);
            }
        }

        // Return the set of primary contacts IDs
        return primaryContacts;
    }


    //get the secondary contacts of a person with status as green and yellow
    public static set<Id> getsecondaryContacts(set<Id> primaryContactIds, set<Id> processedIds){
        // Only consider people with these health statuses
        List<String> healthStatus = new list<String>{'Yellow', 'Green'};
        // Query People_Tracing__c records where either person is in the input set,
        // the contact type is 'Neighbour', and either person has a valid health status
        list<People_Tracing__c> peopleTraces = [SELECT Id, Person_2__c, Person_1__c 
                                                    FROM People_Tracing__c 
                                                    WHERE (Person_1__c IN :primaryContactIds OR Person_2__c IN :primaryContactIds)
                                                    AND Contact_Type__c ='Other'
                                                    AND Contact_Date__c = LAST_N_DAYS :10
                                                    AND (Person_1__r.Health_Status__c ='Green' OR Person_2__r.Health_Status__c ='Green')];
        set<Id> secondaryContacts = new set<Id>();
        // For each tracing record, add the other person (not in the input set) to the result set
        for (People_Tracing__c pt : peopleTraces){
            if (!processedIds.contains(pt.Person_1__c)){
                secondaryContacts.add(pt.Person_1__c);
                processedIds.add(pt.Person_1__c);
            }
            if (!processedIds.contains(pt.Person_2__c)){
                secondaryContacts.add(pt.Person_2__c);
                processedIds.add(pt.Person_2__c);
            }
        }

        // Return the set of secondary contacts IDs
        return secondaryContacts;
    } 


    //update person status to Yellow
    public static void updatePeopleStatus(Set<Id> peopleIds){
        list<Person__c> peopleToUpdate = new list<Person__c>();
        for(Id pid : peopleIds){
            peopleToUpdate.add(new Person__c(Id = pid, Health_Status__c = 'Yellow'));
        }
        if(peopleToUpdate.size()>0){
            update peopleToUpdate;
        }
        
    }
}