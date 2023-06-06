public  class AccountTriggerHandler {
  public static void updateDescription(list<account> accTriggerNew, list<account> accTriggerOld, map<id, account> accTriggerNewMap, Map<id, account> accTriggerOldMap) {
    for(account eachAcc: accTriggerNew){
        boolean updateDescription = false;
        // reach each record
        if(trigger.isInsert && eachAcc.active__c == 'Yes'){
            updateDescription = true;
        }
        if(trigger.isUpdate ){
            if(eachAcc.active__c != accTriggerOldMap.get(eachAcc.id).active__c && eachAcc.active__c == 'Yes'){
                updateDescription = true;
            }
        }
        if(updateDescription==true){//if(updateDesc){
            eachAcc.description = 'account is now active.Enjoy !';
        }
    }
  }
  public static void updateVIPContacts(list<account> accTriggerNew, list<account> accTriggerOld, map<id, account> accTriggerNewMap, Map<id, account> accTriggerOldMap) {
  // to update bulck record 
  //only on accounts whre vip field is updated  

  //new SET of account id for which VIP field is changed

  set<id> accIds = new set<id>();
  for (account newAcc : accTriggerNew) {
    //check if VIP is changed or not
    if(newAcc.vip__c != accTriggerOldMap.get(newAcc.id).VIP__c){
        accIds.add(newAcc.id);
    }
  }
  if(!accIds.isEmpty()){
    list<contact> listContacts = [select id, name, vip__c, accountid from contact where accountid in :accIds];
    for (contact eachContact : listContacts) {
      //eachContact.vip__c= accounts` vip field
     boolean accVip = accTriggerNewMap.get(eachContact.AccountId).vip__c;
     eachContact.vip__c =accVip;
    }
    update listContacts;
  }
  
  }
  public static void createAccountContact(list<account> accTriggerNew, list<account> accTriggerOld, map<id, account> accTriggerNewMap, Map<id, account> accTriggerOldMap) {
    list<contact> listCon = new list<contact>();
    for (account acc : accTriggerNew) {
      contact c = new contact();
      c.accountId= acc.id;
      c.lastName=acc.name;
      listCon.add(c);
    }
    if(!listCon.isEmpty()){
      insert listCon;
    }
    
  }
  public static void validateDelete(list<account> accTriggerOld) {
    for (account oldAcc : accTriggerOld) {
      if(oldAcc.active__c=='Yes'){
        oldAcc.addError('Cannot delete active account!');
      }
    }
  }

  public static void sendRestorationEmail(List<account> accTriggerNew) {
    List<Messaging.SingleEmailMessage> listMessages = new List<Messaging.SingleEmailMessage>();
    for (account newAcc : accTriggerNew) {

        //prepare list of email address where we want to send email message
        List<string> emailAddress = new list<string>();
        emailAddress.add(UserInfo.getUserEmail());

        //Prepare ONE email message.
        Messaging.SingleEmailMessage msg = new messaging.SingleEmailMessage();
        //set email address list where we want to send email
        msg.setToAddresses(emailAddress);
        msg.setSubject('Account successfully restored: ' + newAcc.name);
        msg.setPlainTextBody('Hello Hello, account is restored successfully. ');
        //add single email to LIST of emails
        listMessages.add(msg);
    }
    Messaging.sendEmail(listMessages);
}
}