trigger CaseTrigger on case (before insert,before update, after insert, after update) {
if(trigger.isInsert && trigger.isBefore){
    system.debug('before insert case trigger');

    CaseTriggerHandler.recordCount += trigger.size;
    system.debug('number of records : '+CaseTriggerHandler.recordCount);
}

   /* if(trigger.isInsert && trigger.isBefore){
        CaseTriggerHandler.CaseOrigin(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
    }
    if(trigger.isInsert && trigger.isAfter){
        CaseTriggerHandler.CaseOrigin(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
    }*/
   
}