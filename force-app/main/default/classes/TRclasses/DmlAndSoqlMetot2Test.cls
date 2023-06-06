@isTest 
public class DmlAndSoqlMetot2Test {
    @TestSetup
    static void makeData(){
        list<account> accList= new list<account> ();

        account acc1 = new account();
        acc1.name= 'Sales';
        acc1.Industry= 'Education';
        accList.add(acc1);

        
        account acc2 = new account();
        acc2.name= 'Soft';
        acc2.Industry= 'Energy';
        accList.add(acc2);

        
        account acc3 = new account();
        acc3.name= 'Soft Inc.';
        acc3.Industry= 'Education';
        accList.add(acc3);

        insert accList;

        list<contact> conList = new list<contact>();

        for (Integer i = 1; i < 300; i++) {
            if (i<=100) {
                contact c= new contact();
                c.lastName= 'Test 1';
                c.accountId = acc1.id;
                conlist.add(c);
            }else if ( i <=200){
                contact c= new contact();
                c.lastName= 'Test 2';
                c.accountId = acc2.id;
                conlist.add(c);
            } else {
                contact c= new contact();
                c.lastName= 'Test 3';
                c.accountId = acc3.id;
                conlist.add(c);
            }
        }
        insert conList;
    } 
    @isTest 
    private static void accountSelectIndustryTest() {
        test.startTest();
        integer sz = DmlAndSoqlMetot2.accountSelectIndustry('Education');
        test.stopTest();

        assert.areEqual(2, sz);
    }

    @isTest 
    private static void childToParentSoqlTest() {
        test.startTest();
        DmlAndSoqlMetot2.childToParentSoql();
        test.stopTest();

        list<contact> conList = [select id, lastName from contact where lastName='Test 2 update'];

        assert.areEqual(100, conList.size());
    }
}
   