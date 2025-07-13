trigger CTPeopleTracingTrigger on People_Tracing__c (before insert) {
    SWITCH ON trigger.operationType{
        WHEN BEFORE_INSERT{
            CTPesonTracingTriggerHandler.beforeInsertHandler(trigger.new);
        }
    }
}