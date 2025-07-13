trigger CTLocationTrigger on Location__c (before insert, after insert, before update, after update) {

    SWITCH ON trigger.operationType{
        WHEN BEFORE_INSERT {
            CTLocationTriggerHandler.beforeInsertHandler(trigger.new);
        }
        WHEN BEFORE_UPDATE {
            CTLocationTriggerHandler.beforeUpdateHandler(trigger.new, trigger.oldMap);
        }
        WHEN AFTER_UPDATE {
            CTLocationTriggerHandler.afterUpdateHandler(trigger.new, trigger.oldMap);
        }
    }
}