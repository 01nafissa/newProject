@isTest
public class AccountBatchTest {
    @isTest 
    public static void testBatch1() {
        list<account> listAcc = new list<account>();
        for (Integer i = 0; i < 900; i++) {
           account acc = new account ();
           acc.name = 'test acc '+i;
           listAcc.add(acc); 
        }
        insert listAcc;
        //for async apex, startTest and stopTest are mandatory
        test.startTest();
        AccountsBatch ab = new AccountsBatch();
       database.executeBatch(ab, 900);
       test.stopTest();

       //assert
       list<account> allAccounts = [select id, description from account];
        for (account eachacc : allAccounts) {
            Assert.isTrue(eachAcc.Description.containsIgnoreCase('batch'));
        }
    }
}
//