trigger AccountTrigger on Account (before insert,after insert, before update,  after update, before delete, after delete, after undelete) {
//Account objecti'nin description field'inde bir update işlemi yapıldığında o account'a bağlı opportunity ve contact'ların description field'lerini account description ile aynı olacak şekilde update eden bir "future method" tasarlayınız.
    system.debug('---');
   // if(trigger.isAfter && trigger.isUpdate){
      //  AccountTriggerHandler.UpdateDescription(trigger.new, trigger.oldMap); 
 //set<ids> accIds = new set<ids>();
     // for (account acc : trigger.new) {
       // if(acc.Description !=trigger.oldMap.get(acc.id).Description){
          //  accIds.add(acc.id);
       // }
     // }
   // }

//}




   /* if(Trigger.isBefore ){
        if (Trigger.isInsert || Trigger.isUpdate) {
            AccountTriggerHandler.updateDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        }
        if(Trigger.isDelete){
            //call method to validate delete operation
            AccountTriggerHandler.validateDelete(Trigger.Old);
        }
        
    }
    
    if(Trigger.isAfter && Trigger.isUpdate){
        //account after VIP field is update --> update all it's contacts VIP field
        AccountTriggerHandler.updateVIPContacts(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
    if(Trigger.isAfter && Trigger.isUndelete){
        AccountTriggerHandler.sendRestorationEmail(trigger.new);
    }
}*/
    //Execution
        //1. system validation
        //2. before trigger (record is not saved yet. ID is not generated.)
            //change field values HERE (it is allowed because record is NOT saved yet).
        //3. custom validation
        //4. SAVE (ID is generated. Not available for use. Not Committed)
        //5. after trigger (record is saved. ID is generated. Trigger.new is READ ONLY now)















   /* if(trigger.isAfter && trigger.isUpdate){
        for (id eachId : trigger.newMap.keyset()) {
            account oldAcc = trigger.oldMap.get(eachId);
            account newAcc = trigger.newMap.get(eachId);

            //when old and new is different 
            if(oldAcc.website != newAcc.website){
                system.debug('for account :'+ newAcc.name + ' , updated website: '+newAcc.website);
            }
        }

    } */






    // if(trigger.isAfter && trigger.isUpdate){
    //     for (id eachId : trigger.newMap.keyset()) {
    //         stytem.debug('acc is:'+ eachId);

    //         account oldAccount = trigger.oldMap.get(eachId);
    //         account newAccount = trigger.newMap.get(eachId);

    //         system.debug('old acc name: ' + oldAccount.name + '. new acc name: '+ newAccount.name);
    //         system.debug('old acc rating: ' + oldAccount.rating + ', new acc rating: ' + newAccount.rating);
    //     }
    //     }
    // }


    // if (Trigger.isBefore && Trigger.isInsert) {
    //      system.debug('before insert trigger.oldMap : ' + trigger.oldMap); 
    //      system.debug('before insert, trigger.newMap : ' + trigger.newMap);
    //  }
    //  if (Trigger.isAfter && Trigger.isInsert) {
    //      system.debug('after insert trigger.oldMap : ' + trigger.oldMap); 
    //      system.debug('after insert, trigger.newMap : ' + trigger.newMap);
    //  }
    
    
    //  if (Trigger.isBefore && Trigger.isUpdate) {
    //      system.debug('before update trigger.oldMap : ' + trigger.oldMap); 
    //      system.debug('before update, trigger.newMap : ' + trigger.newMap);
    //  }
    //  if (Trigger.isAfter && Trigger.isUpdate) {
    //      system.debug('after update trigger.oldMap : ' + trigger.oldMap); 
    //      system.debug('after insert, trigger.newMap : ' + trigger.newMap);
    //  }
    
    // }
//     //if we are creating 1 record, we will get 1 record in trigger.new
//         //the number of records we are processing in ONE execution, we will get that many number of records in trigger.new
    
//     //trigger.new  is LIST
//     List<account> newAccounts = trigger.new;
//     if (Trigger.isBefore && Trigger.isInsert) {
//         system.debug('trigger.new before insert : ' + trigger.new);
//         system.debug('before insert number of records: ' + trigger.new.size());
//         for (account eachAcc :trigger.new) {
//             system.debug('before acc id:'+eachAcc.id);
//             system.debug('before acc name:' + eachAcc.name);
//         }
//     }
//     if(trigger.isAfter && trigger.isInsert){
//         system.debug('trigger.new after insert:' + trigger.new);
//         system.debug('AFTER insert number of records: ' + trigger.new.size());

//         for (account eachAcc :trigger.new) {
//             system.debug('after acc id:'+eachAcc.id);
//             system.debug('after acc name:' + eachAcc.name);
//         }

//     }
//     if (Trigger.isBefore && Trigger.isUpdate) {
//         //in before update record is not saved
//         system.debug('trigger.new before update : ' + trigger.new);
//         system.debug('before update number of records: ' + trigger.new.size());


//     }
//     if (Trigger.isAfter && Trigger.isUpdate) {
//          //in after update record is saved
//         system.debug('trigger.new after update : ' + trigger.new);
//         system.debug('after update number of records: ' + newAccounts.size());
//     }
//     trigger AccountTrigger2 on Account (before delete, after delete) {

//         if (Trigger.isBefore) {
//             system.debug('before delete trigger.new : ' + trigger.new);
//         }
//         if (Trigger.isAfter) {
//             system.debug('after delete trigger.new : ' + trigger.new);
//         }
//     }
//     //before inser.two contexr variables
// // if(trigger.isInsert && trigger.isBefore){
// //     system.debug('before Insert trigger called');
// // }
// // if(trigger.isInsert && trigger.isAfter){
// //     system.debug('after Insert trigger called');
// // }

// // if(trigger.isupdate && trigger.isBefore){
// //     system.debug('before update trigger called');
// // }
// // if(trigger.isupdate && trigger.isAfter){
// //     system.debug('after update trigger called');
// // }

//     // if(trigger.isupdate){
//     //     system.debug('before update account trigger');
//     // }

//     // if(trigger.isUpdate){
//     //     system.debug('after update account trigger');
//     // }
    
// }
// if (Trigger.isAfter && Trigger.isUpdate) {
//     system.debug('after update trigger.old : ' + trigger.old);
//     //List<account> oldAccounts = trigger.old;
//     for (Account oldAcc : trigger.old) {
//         system.debug('old acc id is ' + oldAcc.Id  + ', old acc name is ' + oldAcc.Name);
//     }
//     system.debug('-------------');
//     system.debug('after update, trigger.new : ' + trigger.new); 
//     for (Account newAcc : trigger.new) {
//         system.debug('new acc id is ' + newAcc.Id  + ', new acc name is ' + newAcc.Name);
//     }

 }
