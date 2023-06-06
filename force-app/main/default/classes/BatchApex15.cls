
    //Batch=>Tüm Accountların name lerininin yanına update kelimesini ekleyelim. Annual revenue si olmayanların da Annual Revenueleri 10000 yapılsın..
   public class BatchApex15 implements Database.Batchable<sObject> {
   
    public Database.QueryLocator start(Database.BatchableContext BC) {
        Database.QueryLocator q1 =database.getQueryLocator([select id, name, annualrevenue from account]);
        return q1;
    }
   
    public void execute(Database.BatchableContext BC, List<Account> scope) {
        list<account> updateAcc = new list<account>();
        for (account acc : scope) {
            if(acc.name.length()<30){
            acc.name+= ' update';
            }
            if(acc.annualRevenue == null){
                acc.AnnualRevenue= 10000;
            }
            updateAcc.add(acc);
        }
        update updateAcc;
    }
   
    public void finish(Database.BatchableContext BC) {
        system.debug('Islem basari ile gerceklesti');
    }
   
   }
