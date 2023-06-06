@isTest 
public  class DepartmentTriggerHandlerTest {
   @isTest 
   private static void FutureTest() {
    list<department__c> listDep = new list<department__c>{
        new Department__c(name__c = 'test'),
        new Department__c(name__c = 'Trigger'),
        new Department__c(name__c = 'Soql'),
        new Department__c(name__c = 'Dml')

    };
    //Test.startTest();
    insert listDep;
    //test.stopTest();

    //assert
    List<Employee__c> listEmpl =[select id, first_name__c from Employee__c];
    assert.areequal(4, listEmpl.size());
    for (Employee__c eachEmp : listEmpl) {
        assert.areEqual('Richard', eachEmp.First_Name__c);
    }
   }
}