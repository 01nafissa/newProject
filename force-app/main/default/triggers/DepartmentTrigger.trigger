trigger DepartmentTrigger on Department__c (before insert, after insert) {
if(trigger.isafter && trigger.isInsert){
    //call future method to create default employee
    DepartmentTriggerHandler.createDefaultEmployee(trigger.newMap.keySet());
}
}