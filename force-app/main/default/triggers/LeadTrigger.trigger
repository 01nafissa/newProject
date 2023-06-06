trigger LeadTrigger on Lead (before insert, before update) {
List<lead> newLeads= trigger.new;
if (Trigger.isBefore && Trigger.isInsert){
    for (lead eachLead : newLeads) {
        system.debug('trigger.new before insert : ' + eachLead);  
    }
}
if (Trigger.isBefore && Trigger.isUpdate) {
        
        for (lead eachLead : trigger.new) {
            system.debug('before update Lead ID:'+eachLead.id + 
            ' NAME:' + eachLead.name+ 
            ' DESCRiption: '+eachLead.description);
        }
}

}
//Trigger revision:

// All context variable.
// Trigger.isBefore
// Trigger.isAfter
// Trigger.isInsert
// Trigger.isUpdate
// Trigger.isDelete

// Trigger.new
//     - list<sObject>
//     - new records (latest created or updated records)
//     - is it available in before insert?
//         - Yes, it is available. NO ID. No createddate, no createdby.
//             - why no ID?    
//                 - record is NOT YET Saved.
//     - is it available in after insert?
//         - Yes. With Id. 
//     - Before update and after update?
//         - Yes. With Id.
//         - what would be name in before update?
//             - trigger.new name:
//         - what would be name in after update?
//             - trigger.new name:
// Trigger.old
//     - list<sObject>
//     - old record or immediate previous data
//     - Available in Before insert and after insert?
//         - No. It is null. Why? 
//             - There was no previous records. 
//     - Available in Before update and after update?
//         - yes. 
//     -  Example: old name would be Lux.