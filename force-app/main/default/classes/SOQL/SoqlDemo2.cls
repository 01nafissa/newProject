public  class SoqlDemo2 {
    public static void accountContactSOQL() {
        list<contact> listCon = [select id, name, account.name, account.industry, account.annualRevenue from contact];
        for (contact eachContact : listCon) {
            system.debug('contact name is '+ eachContact.Name);
            string accName= eachContact.account.name;
            system.debug('account name is '+ accName+' , account industry is '+ eachContact.account.Industry);
            

            decimal accRevenue = eachContact.account.annualRevenue;
            system.debug('account revenue : '+ accRevenue);
            system.debug('-------');

        }
    }
      
    public static void contactSOQL(){
        list<contact> lstContact = [select id, name, account.id, account.name from contact];
        for (contact eachContact : lstContact){
            system.debug('account ID=>' + eachContact.account.id);
            system.debug('account name=> '+ eachContact.account.name);
            system.debug('-------');

        }
    }
    public static void accountSOQL(){
        list<account> lstAccount= [select id, name,(select id, name from contact) from account where name in ('Apple', 'Meta', 'Tesla', 'Microsoft')];
        for (account eachAccount : lstAccount){
            system.debug('Contact Name: '+contact.name+'its id: '+ contact.id);
        }
    }
}