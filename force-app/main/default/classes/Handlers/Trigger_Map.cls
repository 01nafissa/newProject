public class Trigger_Map {
    public static id InsertSF_Project() {
        Salesforce_Project__c salesPro= new Salesforce_Project__c();
        insert salesPro;

     return salesPro.id;
    }
    public static void UpdateSF_Project(id id1, string name1) {
        Salesforce_Project__c salesPro= [select id,Project_Name__c from Salesforce_Project__c where id= :id1];
        salesPro.Project_Name__c= name1;
        update salesPro;
    }
   

}