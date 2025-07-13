trigger CTPersonTrigger on Person__c (before insert, after insert, before update, after update, before delete, after delete, after undelete) {
    SWITCH ON trigger.operationType{
        WHEN BEFORE_INSERT {
            //call the beforeInsertHandler method to --
            //set status as green 
            //set the token for the person
            CTPersonTriggerHandler.beforeInsertHandler(trigger.new);
            
        }
        WHEN AFTER_INSERT {
            
             
        }
        WHEN BEFORE_UPDATE {
            //call before update handler to --
            //make status update date field update if status is updated
            CTPersonTriggerHandler.beforeUpdateHandler(trigger.new, trigger.oldMap);
             
        }
        WHEN AFTER_UPDATE {
            //call the after update handler to -
            //update the healthStatus of primary, secondary contacts and neighbours and cohabitants
            CTPersonTriggerHandler.afterUpdateHandler(trigger.new, trigger.oldMap);

             
        }
        WHEN BEFORE_DELETE {
           
             
        }
        WHEN AFTER_DELETE {
            
             
        }
        WHEN AFTER_UNDELETE {
            
             
        }
    }
}