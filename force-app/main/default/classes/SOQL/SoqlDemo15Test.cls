@isTest
public  class SoqlDemo15Test {
  //test to use in both test class using TESTSETUP method
  @TestSetup
  static void makeData(){

  
  List<account> listAcc = new list<account>();
  for (Integer i = 0; i < 15; i++) {
      account ac = new account();
      ac.Name = 'test acc ' + i;
     
      //add account to list
      listAcc.add(ac);
  }
  insert listAcc;

      list<opportunity> listOpp = new list<opportunity>();
      for (Integer i = 0; i < 30; i++) {
        Opportunity opp = new Opportunity(name = 'test opp', amount = 50000,stageName='New', CloseDate=date.today(), accountid = listAcc[0].id);
        listOpp.add(opp);
      }
      insert listOpp;
  }


  @isTest
  static void testSoql1(){
    // //we can use account records created in SETUP method HERE
    SoqlDemo15.oppAccQuery();
  }
  @IsTest
    static void testSoql2(){
        //we can use account records created in SETUP method HERE.
}
}