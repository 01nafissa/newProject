public class SoqlAssignment1 {
   public static list<employee__c> topEmployees() {
    list<employee__c> empList = [select Name__c, Last_Name__c, salary__c where salary__c desc limit 5];
return empList;  
}

}