trigger ContactTigger on contact (before insert,before update,after insert, after update) {
   //2 tane contact update edildiginde bunlarin eski last name ve yeni last name lerini yan yana yazdiralim.
if(trigger.isUpdate && trigger.isAfter){
    ContactTriggerHandler.printLastName(trigger.new, trigger.oldMap);
}




/*if(trigger.isBefore && trigger.isUpdate){
    ContactTriggerHandler.validateContactUpdate1(Trigger.new, Trigger.Old,trigger.NewMap,Trigger.OldMap);
    ContactTriggerHandler.validateContactUpdate2(Trigger.new, Trigger.Old,trigger.NewMap,Trigger.OldMap);
}*/







//     for (contact eachContact : trigger.new) {
//         contact oldCo = trigger.oldMap.get(eachContact.id);
//         if(oldCo.leadSource == 'Partner Referral'){
//             //throw erorr
//             eachContact.addError('Cannot update contact if leadsource is already Partner Referral ');
//         }
//     }

// }
    // if(trigger.isInsert && trigger.isBefore){
    //     system.debug('before Insert trigger called');
    // }
    // if(trigger.isInsert && trigger.isAfter){
    //     system.debug('after Insert trigger called');
    // }
    // if(trigger.isupdate && trigger.isBefore){
    //     system.debug('before update trigger called');
    // }
    // if(trigger.isupdate && trigger.isAfter){
    //     system.debug('after update trigger called');
    // }
    // if(trigger.isDelete && trigger.isAfter){
    //     system.debug('after delete the  trigger called'); 
    // }
    // if(trigger.isUndelete && trigger.isAfter){
    //     system.debug('after undelete trigger called'); 
    // }

//    if(trigger.isBefore){
//     system.debug('before  trigger called');
//     if(trigger.isInsert){
//         system.debug('before insert trigger called');
//     }
//     if(trigger.isUpdate){
//         system.debug('before update trigger called');     
//     }
//    } 
//    if(trigger.isAfter){
//     system.debug('after trigger called');
//     if(trigger.isInsert){
//         system.debug('after insert trigger called');
//     }
//     if(trigger.isUpdate){
//         system.debug('after update trigger called');     
//     }
//    }
}