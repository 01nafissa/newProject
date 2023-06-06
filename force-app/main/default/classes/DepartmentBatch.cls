
public class DepartmentBatch implements Database.Batchable<sObject> {
   
   
    public Database.QueryLocator start(Database.BatchableContext BC) {
        system.debug('inside start method');
        return database.getQueryLocator([select id, number_of_employees__c, (select id from employees__r) from Department__c]);
    }
   
    public void execute(Database.BatchableContext BC, List<Department__c> scope) {
        system.debug('inside start method');
        for (Department__c eachDep : scope) {
            //get a count of employees
            if(eachDep.Employees__r != null){
            eachDep.number_of_employees__c = eachDep.employees__r.size();
            }
        } 
       update scope;
    }
   
    public void finish(Database.BatchableContext BC) {
        system.debug('finished');
    }
   
   }