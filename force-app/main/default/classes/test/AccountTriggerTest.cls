@isTest 
public  class AccountTriggerTest {
 @isTest 
 static void testAccTrg1() {
    list<account> listAcc = new list<account>();

    Account acc = new account();
    acc.Name = 'JN Test';
    acc.Industry = 'Energy';
    acc.Active__c ='No';
    listAcc.add(acc);
    
    Account acc2 = new account();
    acc2.Name = 'UN Test';
    acc2.Active__c ='No';
    listAcc.add(acc2);

    Account acc3 = new account();
    acc3.Name = 'TN Test';
    acc3.Active__c ='No';
    listAcc.add(acc3);

    Account acc4 = new account();
    acc4.Name = 'TN Test';
    acc4.Active__c ='Yes';
    listAcc.add(acc4);

    insert listAcc;

    for (account eachAcc : listAcc) {
      eachAcc.Active__c = 'Yes';
    }
    update listAcc;

    list<account> accounts = [select id, name, active__c, description from account];
    assert.areEqual(4,accounts.size());
    assert.isTrue(accounts[0].description.contains('Enjoy'));


   
  }
  @isTest 
  private static void testVIP1() {
    //nees accounts and contacts
    list<account> listAcc = new list<account>{
      new Account(name='Rolex', industry = 'Energy', website = 'rolex.com'),
      new account(name='acc 2'),
      new account(name='acc 3')
    };
    insert listAcc;
    //create 100 contacts for each acc
  list<contact> listContact = new list<contact>();
    for (Integer i = 0; i < 300; i++) {
      contact c= new contact (lastName= 'Time'+i);
      if (i<100) {
        c.accountId= listAcc[0].id;
      } else if(i<200) {
        c.accountId= listAcc[1].id;
      }else{
        c.accountId= listAcc[2].id;
      }
      listContact.add(c);
    }
    insert listContact;
//<= THIS is actual test
    test.startTest();
    for (account acc : listAcc) {
      acc.vip__c = true;
    }
    update listAcc;
    test.stopTest();

    //Asserttion
    list<contact> allContacts = [select id, name, vip__c from contact];
    for (contact eachCon : allContacts ) {
      assert.areEqual(true, eachCon.VIP__c);
    }
   
  }

 } 
