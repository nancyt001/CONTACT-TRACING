public with sharing class CTLocationTracingTriggerHanlder {
    
    public static void beforeInsertHandler(list<Location_Tracing__c> newRecords){
        list<Location_Tracing__c> duplicates = CTLocationTracingController.checkDuplicates(newRecords);
        for (Location_Tracing__c trace : duplicates){
            trace.addError('Duplicate found- Location : '+ trace.Location__c +' Person : ' + trace.Person__c);
        }
    }
}