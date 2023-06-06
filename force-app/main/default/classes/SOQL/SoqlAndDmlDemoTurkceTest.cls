@istest
public class SoqlAndDmlDemoTurkceTest {
    @istest 
 private static void getAccWithOppTest() {
    list<account> accList = new list<account> ();
    account acc1 = new account();
    acc1.Name = 'demo1';
    accList.add(acc1);

    account acc2 = new account();
    acc2.Name = 'demo1';
    accList.add(acc2);

    insert accList;
    List<Opportunity> OppList= new List<Opportunity>();
    for (account acc : accList) {
        Opportunity opp = new Opportunity();
        opp.name= acc.name + 'Opportunity';
        opp.CloseDate = date.today().addDays(30);
        opp.stageName= 'Prospecting';
        opp.AccountId = acc.id;
        OppList.add(opp);
    }
    insert OppList;
    test.startTest();
    integer accSys = SoqlAndDmlDemoTurkce.getAccWithOpp();
    test.stopTest();
    assert.areEqual(2, accSys);
 }  
 @isTest 
 private static void getAccWithOpp2Test() {
    test.startTest();
    SoqlAndDmlDemoTurkce.createAccount('SoftInnovas');
    test.stopTest();
    Account acc=[select id, name from account limit 1];
    assert.areEqual('SoftInnovas', acc.name);
    List<contact> listCon = [select id from contact];
    assert.isTrue(listCon.size()>0);
 }
}