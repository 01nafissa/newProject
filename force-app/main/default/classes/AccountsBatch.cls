public  class AccountsBatch implements Database.batchable<sobject>, database.stateful{
//start
//execute
//finish
integer countRecords = 0;
//first 
//soql query to fetch all Records which we want to Process
public database.QueryLocator start(database.batchableContext bc){
    //soql
    Database.QueryLocator acc = database.getQueryLocator([select id, name, description, active__c from account]);
    return acc;
}

public void execute(Database.BatchableContext bc, list<account> listAcc){
    list<account> updateAcc = new list<account>();
    for (account ac : listAcc) {
        if (ac.active__c != 'No') {
            ac.Description += '..Updated via batch';
            updateAcc.add(ac);
        }
    }
    update updateAcc;
}

public void finish(Database.BatchableContext bc){
    system.debug('BATCH PROCESSED. ENJOY.');
}

}
