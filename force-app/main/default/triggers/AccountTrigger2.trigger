trigger AccountTrigger2 on Account (before insert,after insert, before update, after update){} 
    //.isInsert => true, while inserting record
    //if(trigger.isBefore){
        //system.debug('defore update account trigger');
    //}
    ////.isUpdate => true while updating record
  //if(trigger.isAfter){
   // system.debug('after update account trigger');
  //}
//   if (Trigger.isBefore && Trigger.isInsert) {
//     system.debug('before insert trigger.old : ' + trigger.old); 
//     system.debug('before insert, trigger.new : ' + trigger.new);
// }
// if (Trigger.isAfter && Trigger.isInsert) {
//     system.debug('after insert trigger.old : ' + trigger.old); 
//     system.debug('after insert, trigger.new : ' + trigger.new);
// }


// if (Trigger.isBefore && Trigger.isUpdate) {
//     system.debug('before update trigger.old : ' + trigger.old); 
//     system.debug('before update, trigger.new : ' + trigger.new);
// }
// if (Trigger.isAfter && Trigger.isUpdate) {
//     system.debug('after update trigger.old : ' + trigger.old); 
//     system.debug('after insert, trigger.new : ' + trigger.new);
// }

//}