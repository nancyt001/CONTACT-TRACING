trigger CTLocationTracingController on  Location_Tracing__c (before insert) {
 SWITCH On trigger.operationType{
    WHEN BEFORE_INSERT{
        CTLocationTracingTriggerHanlder.beforeInsertHandler(trigger.new);
    }
 }
}