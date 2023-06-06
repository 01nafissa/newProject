public  class AccountHelperUpdate {
    @InvocableMethod
    public  static void updateAccountWebsite(list<id> accIds) {
        
        list<account> accList = [select id, name, parentid, website from account where id in: accIds ];
        for (account eachAcc: accList) {
            eachAcc.Website = 'www.softinnovas.com';
            
        }
       
            update accList;
        
            }
}