public class AccountTriggerHandler {
   //Account objecti'nin description field'inde bir update işlemi yapıldığında o account'a bağlı opportunity ve contact'ların description field'lerini account description ile aynı olacak şekilde update eden bir "future method" tasarlayınız.
public static void UpdateDescription(list<account> accNew, map<id, Account> accOLdMap) {
    set<id> accIds = new set<id>();
    for (account acc : accNew) {
      if(acc.Description !=accOLdMap.get(acc.id).Description){
          accIds.add(acc.id);
      }
    }
    futureDescriptionUpdate(accIds);
}
@future 
public static void futureDescriptionUpdate(set<id> accIds) {
    //bu accounta bagli tum contaclatri getirip description fieldlerini update ederiz

    list<contact> conList = [select id, description, account.description from contact where accountid =: accIds];

    for (contact con : conList) {
        con.description = con.account.description;
    }
    update conList;

    //bu acc bagli tum opp getirip description fiels lerini update ederiz

    List<Opportunity> oppList= [select id, description, account.description from Opportunity where  accountid=:accIds];

    for (Opportunity opp : oppList) {
        opp.description = opp.account.description;
    }
    update oppList;
}

@future 
public static void updateNumberOfContacts(set<id> accIds) {
    
    
}



    @future
    public static void futureCreateContacts(set<id> accIds) {
        List<Contact> conList = new List<Contact>();
        for (id accId : accIds) {
            contact con = new contact();
            con.LastName = 'Contact';
            con.AccountId = accId;
            conList.add(con);
        }
        insert conList;
    }

   


}