public class DmlAndSoqlMetot {
    public static void createAccount() {
        account acc= new account();
        acc.name= 'Salesforce';
        insert acc;
    }
    public static void createAndUpdateAcc() {
        account acc= new account();
        acc.name= 'Softinnovas';
        insert acc;

        acc.name= 'Softinnovas Inc';
        update acc;
    }
    public static void createContact() {
        account acc= [select id, name from account where name = 'Salesforce' limit 1];
        
        contact con = new contact ();
        con.LastName='Doe';
        con.AccountId = acc.id;
        insert con;
    }
}

    