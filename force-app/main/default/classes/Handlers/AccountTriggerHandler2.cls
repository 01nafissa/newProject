public class AccountTriggerHandler2 {
   /* public static void updateAccountValid(
        list<account> aTriggerNew, 
    list<account> aTriggerOld,
    map<id, account> aTriggerNewMap,
     map<id, account> aTriggerOldMap) {
       set<id> accIdSet = new  set<id>();
       for (account acc : aTriggerNew) {
        if(acc.rating=='Hot'){
            accIdSet.add(acc.id);
        }
       }
       list<account> accList = [select id, name, rating,(select id, name, stageName from opportunities where stageName !='Closed Won' and stageName != 'Closed Lost') from account where id in : accIdSet];

       for (account eachAcc : accList) {
        if(eachAcc.opportunities.size()<3){
            aTriggerNewMap.get(eachAcc.id).addError('This account CANNOT be HOT. Okay?');
        }
       }*/

  public static void updateRevenueValid(
    list<account> aTriggerNew, 
 list<account> aTriggerOld,
 map<id, account> aTriggerNewMap,
 map<id, account> aTriggerOldMap){

 
for (account acc : aTriggerNew) {
    decimal oldAnnual = aTriggerOldMap.get(acc.id).annualRevenue;
    decimal newAnnual = acc.annualRevenue;

    if(oldAnnual==null){
        oldAnnual=0;
    }
    if(newAnnual==null){
        newAnnual=0;
    }
    if(newAnnual!= oldAnnual && newAnnual<oldAnnual){
        acc.annualRevenue.addError('Annual Revenue for an account cannot be reduced');
    }
}
}

public static void createAccountContact( list<account> aTriggerNew, 
list<account> aTriggerOld,
map<id, account> aTriggerNewMap,
map<id, account> aTriggerOldMap) {
    list<contact> listCon = new list<contact>();
    for (account acc : aTriggerNew) {
        contact c = new contact();
        c.accountId= acc.id;
        c.lastName= acc.Name;
        c.phone= acc.phone;
        listCon.add(c);
    }
    if(!listCon.isEmpty()){
        insert listCon;
    }
    
}

public static void UpdateAccountStage(
    list<account> aTriggerNew, 
    list<account> aTriggerOld,
    map<id, account> aTriggerNewMap,
    map<id, account> aTriggerOldMap) {
    
        set<id> accIds = new set<id>();
        for (account acc : aTriggerNew) {
            accIds.add(acc.id); 
        }
        list<opportunity> oppList = [select id,name,stageName from opportunity where accountId in:accIds and isclosed = false];

        for (opportunity opp : oppList ) {
            opp.stageName= 'Closed Lost';
        }
        update oppList;
}

public static void updateContactAccount(list<account> aTriggerNew, 
list<account> aTriggerOld,
map<id, account> aTriggerNewMap,
map<id, account> aTriggerOldMap) {
    set<id> accIds = new set<id>();
    for (account acc : aTriggerNew) {
        if(acc.phone != aTriggerOldMap.get(acc.id).phone){
            accIds.add(acc.id);
        }
        list<contact> listCon = [select id, name, otherphone, accountId, mobilephone from contact where accountId in :accIds ];
        for (contact  con : listCon) {
            con.otherPhone = aTriggerOldMap.get(con.accountId).phone;
            con.mobilephone= aTriggerNewMap.get(con.accountId).phone;
        }
        update listCon ;
    }
    
}
}
