public  class EmployeeTriggerHandler {
   public static void updateJoindate(list<employee__c> empTriggerNew) {
    if(trigger.isInsert || trigger.isUpdate){
        for (employee__c  newEmp : empTriggerNew) {
            if(newEmp.joindate__c ==null){
                newEmp.joinDate__c = date.today();
            }
        }
    }
   }
}