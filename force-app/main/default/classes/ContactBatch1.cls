
   public class ContactBatch1 implements Database.Batchable<sObject> {
   
    public Database.QueryLocator start(Database.BatchableContext BC) {
        Database.QueryLocator q1 =database.getQueryLocator([select id, name, description from contact]);
        return q1;
    }
   
    public void execute(Database.BatchableContext BC, List<contact> scope) {
        list<contact> updateCon = new list<contact>();
        for (contact con : scope) {
            if(con.name.length()<30){
        con.Description = 'Updated by Batch.';
            }
            updateCon.add(con); 
        }
        update updateCon;
    }
   
    public void finish(Database.BatchableContext BC) {
        system.debug('batch over');
    }
   
   }
