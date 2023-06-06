public  class SoqlDemo {
    public static void accountSOQL1() {
      List<account> listAcc=[select id, name, phone from account];
      system.debug(listAcc);

      list<contact> listCon =[select id, name, phone from contact];
      system.debug(listCon);
    }

    public static void accountSOQL1Rec(){
        account acc= [select id, name,phone, website from account order by createddate desc limit 1];
        system.debug(acc);
        string accName =acc.Name;
        system.debug('name of account is '+ accName);
        system.debug('website of acc is '+ acc.website);
    }

    public static void accountSOQL3() {
        list<account> listAcc = [select id, name, phone, accountnumber from account order by createddate desc]
        ;

        for(account eachAcc : listAcc){
            system.debug('each account record is '+eachAcc);

            string accName = eachAcc.Name;
            system.debug('account Name: '+accName);
            system.debug('account phone: '+eachAcc.Phone);
            system.debug('accountnumber: '+eachAcc.accountnumber);
            system.debug('----------');
        }
    }
    public static void projectSoqlFilter(){
        list<salesforce_project__c> listSP = [select id, name, project_name__c, status__c from salesforce_project__c where status__c = 'In-progress'];
        system.debug(listSP);
        system.debug('# of records=> '+ listSP.size());
    }

    public static void projectSoqlFilter(string status){
        list<salesforce_project__c> listSP = [select id, name, project_name__c, status__c from salesforce_project__c where status__c = :status];
        system.debug(listSP);
        system.debug('# of records=> '+ listSP.size());
    }
}