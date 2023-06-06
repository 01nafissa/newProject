@isTest
public class dmldemo15Test {
    @isTest
   public static void testDML1() {
    DmlDemo15.dmlInsertDemo1();
    //It will not create record in the ORG
    // use soql
    list<account> listAcc = [select id, name from account];
   system.assertEquals(1, listAcc.size());
   assert.areEqual(1, listAcc.size());

   assert.areEqual('Salesforce', listAcc[0].name);
   }
    @isTest
   public static void testDML2(){
    DmlDemo15.dmlInsertDemoCO1();
    list<department__c> listdep = [select id, name__c from department__c];
    system.assertEquals(1, listdep.size());
    assert.areequal(1, listdep.size());
    Assert.areEqual('Human Resource', listdep[0].name__c);
    }
    @isTest
    public static void testDML3() {
     //creting data
     account acc3 = new account(name = 'acc test');
     insert acc3;

     //call method
     DmlDemo15.dmlUpdateDemo2();
     //we will assert if the name is updated or not
     //soql first
     account accAssert = [select id, name from account where id = :acc3.id];

     assert.areEqual('Softinnovas Inc.', accAssert.name);
    }
    @isTest
    private static void testDML4() {
        //prepare data
        department__c dept = new department__c (Name__c = 'QA');
         insert dept;

         //call method
         DmlDemo15.insertRelatedRec2();
         //asser
         Employee__c emp = [select id, name, First_Name__c,Last_Name__c,Department__c from Employee__c where department__c = :dept.id limit 1];
         assert.areEqual ('Don', emp.First_Name__c );
    }

    @isTest
    private static void testDML5() {
        //prepare daa
        List<account> listAcc = new list<account>();
        for (Integer i = 0; i < 155; i++) {
            account ac = new account();
            ac.Name = 'test acc ' + i;
           
            //add account to list
            listAcc.add(ac);
        }

        //if list is not empty then only insert
        if (!listAcc.isEmpty()) {
            insert listAcc;//insert 155 accounts
        }
        //to RESET governor limit
        test.startTest();
        //call method
        DmlDemo15.bulkUpdateRight();
        test.stopTest();
        //assert 
        account acc = [select id, name from account limit 1];
        assert.isTrue(acc.name.contains('v2'));
    }
}