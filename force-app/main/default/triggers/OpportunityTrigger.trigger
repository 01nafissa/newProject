trigger OpportunityTrigger on Opportunity (before insert,before update, after insert, after update) {
           // Bir opportunitynin stage Name i update edildiğinde closed lost olarak değiştirildiğinde Description da 'çok üzgünüz' mesajını yazdırsın. closed won olarak değiştirildiğinde 'yaşasın' mesajı yazdırsın. Prospecting olarak değiştirilmek istendiğinde izin verme hata mesajı olarak 'süreci başa döndüremezsiniz..' mesajını ver

if(trigger.isUpdate && trigger.isBefore){
    OpportunityTriggerHandler.stageNameUpdate(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
}










/*if(trigger.isInsert){
    if(trigger.isBefor){
        system.debug('insert before ich iche');
    }
}
if(trigger.isInsert && trigger.isAfter){
    if(trigger.isBefore){
        system.debuf('insert tek tek');
    }
}*/
/*if(trigger.isInsert && trigger.isBefore){
   system.debug('======before insert trigger tetiklendi====');
   system.debug('trigger new='+trigger.new); 
   for (opportunity eachopp : trigger.new) {
    system.debug('opportunity name= '+eachopp.name);
    system.debug('opportunity id= '+eachopp.id);
    system.debug('created Date= '+eachopp.CreatedDate);
    
   }
}
if(trigger.isInsert && trigger.isAfter){
    system.debug('======after insert trigger tetiklendi====');
    system.debug('trigger new='+trigger.new); 
    for (opportunity eachopp : trigger.new) {
        system.debug('opportunity name= '+eachopp.name);
        system.debug('opportunity id= '+eachopp.id);
        system.debug('created Date= '+eachopp.CreatedDate);
        
       }
}

if(trigger.isUpdate && trigger.isBefore){
    system.debug('======before update trigger tetiklendi====');
    system.debug('trigger new='+trigger.new); 
}

if(trigger.isUpdate && trigger.isAfter){
    system.debug('======after update trigger tetiklendi====');
    system.debug('trigger new='+trigger.new); 

}*/
}