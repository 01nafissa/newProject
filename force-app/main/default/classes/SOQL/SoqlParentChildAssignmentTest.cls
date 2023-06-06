@istest 
public class SoqlParentChildAssignmentTest {
  @TestSetup

  static void ddata() {
   account acc1 = new account(name = 'Account1');
   insert acc1;

   list<contact> ConList = new list<contact>();
   for (Integer i = 0; i < 3; i++) {
    contact con = new contact();
    con.lastName='con'+ i;
    con.accountId= acc1.id;
    ConList.add(con);
   }
   insert ConList;
  
   
 }
 @isTest 
 test.startTest();
   SoqlParentChildAssignment.printContactAccounts();
 test.stopTest();
 
 @isTest 
 private static void printAccountContactsTest() {
    
 }
}