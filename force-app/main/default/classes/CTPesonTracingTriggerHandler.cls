public with sharing class CTPesonTracingTriggerHandler {

    public static void beforeInsertHandler(list<People_Tracing__c> newRecords){
        list<People_Tracing__c> duplicateRecords = CTPeopleTracingController.checkDuplicates(newRecords);
        for (People_Tracing__c trace :duplicateRecords){
            trace.addError('Duplicate Found - Person 1: ' + trace.Person_1__c +' Person 1: '+ trace.Person_2__c);
        }
    }
}