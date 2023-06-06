@isTest 
public class AccountTriggerFutureTest {
  @isTest 
  private static void UpdateDescriptionTest() {
    account acc = new Account();
    acc.Name = 'Account Future Test';
    insert acc;

    Opportunity opp = new Opportunity();
    opp.name= 'Opportunity Future Test';
    opp.CloseDate= date.today().addDays(30);
    opp.stagename = 'Prospecting';
    opp.accountId= acc.id;
    insert opp;

    contact con = new contact();
    con.LastName= 'Contact Future Test';
    con.accountId= acc.id;
    insert con;

    acc.description = 'Account Future metot ile msj eklendi.';

    test.startTest();
    update acc;
    test.stopTest();

    Opportunity opp1 = [select id, description from opportunity where accountId =: acc.id limit 1];
    assert.isNotNull(opp1.description);
    assert.isTrue(opp1.description.contains('Future'));

    contact con1 = [select id, description from contact where accountId =: acc.id limit 1];
    assert.isNotNull(con1.description);
    assert.isTrue(con1.description.contains('Future'));

  }
}