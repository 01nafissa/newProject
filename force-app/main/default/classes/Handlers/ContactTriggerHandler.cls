public  class ContactTriggerHandler {
 public static void printLastName(list<contact> cTriggerNew,  map<id, contact> cTriggerOldMap) {
    for (contact con : cTriggerNew) {
        system.debug('New Last Name: '+ con.lastName + ' - '+ 'Old Last Name: '+cTriggerOldMap.get(con.id).lastName);
    }
 }

   /* public static void validateContactUpdate1(
        list<contact> cTriggerNew,
         list<contact> cTriggerOld,
          map<id,contact> cTriggerNewMap,
           map<id,contact> cTriggerOldMap) {

            // don`t allow user to update leadsource

            //for eac for trigger.new
            //check if leadsource is changed?
        for (contact newCon : cTriggerNew) {
            contact oldCon= cTriggerOldMap.get(newCon.id);
            if(oldCon.leadSource == 'Partner Referral'){
                newCon.addError('Cannot update contact with Lead Source as Partner Referral');
            }
        }
    }

    public static void validateContactUpdate2(
        list<contact> cTriggerNew,
         list<contact> cTriggerOld,
          map<id,contact> cTriggerNewMap,
           map<id,contact> cTriggerOldMap) {

            // don`t allow user to update leadsource

            //for eac for trigger.new
            //check if leadsource is changed?
            for (contact newContact : cTriggerNew) {
             if(newContact.leadsource != cTriggerOldMap.get(newContact.id).leadsource ){
                newContact.LeadSource.addError('Error! Cannot Update leadsource!');
             }   
            }
        }*/
}