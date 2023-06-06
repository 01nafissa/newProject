@istest
public class DmlAndSoqlMetotTest {
    @isTest 
    private static void createAccount() {
        test.startTest();
        DmlAndSoqlMetot.createAccount();
        test.stopTest();

        list<account> accList = [select id, name from account where name= 'Salesforce'];
        assert.areEqual(1,accList.size());
        assert.areEqual('Salesforce', accList[0].name);
    }
    @isTest 
    private static void createAndUpdateAccTest() {
        test.startTest();
        DmlAndSoqlMetot.createAndUpdateAcc();
        test.stopTest();

        list<account> accList = [select id, name from Account];
        assert.areEqual(1,accList.size());
        assert.areEqual('Softinnovas Inc', accList[0].name);
    }
    @isTest 
    private static void createContactTest() {
        account acc= new account();
        acc.name= 'Salesforce';
        insert acc;

        test.startTest();
        DmlAndSoqlMetot.createContact();
        test.stopTest();

        list<contact> conList =[select id, lastName from contact where lastName= 'Doe'];

        assert.areEqual(1, conList.size());
    }

}