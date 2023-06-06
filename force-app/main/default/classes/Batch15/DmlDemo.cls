public class DmlDemo {
    public static void dmlInsertDemo1() {
        //create one account record
        //1.new instance
        account acc = new account();
        acc.Name = 'salesforce';
        acc.website = 'www.salesforce.com';

        //dml
        insert acc; //= save button
        system.debug('inserted acc: '+acc);

    }

    public static void dmlInsertDemoCo1() {
        department__c d = new department__c();
        d.Name__c = 'Human Resource';
        d.Short_Code__c = 'HR';
        insert d;
        //system.debug(d);
    }
    public static void dmlInsertDemo4() {
        employee__c emp = new employee__c();
        emp.First_Name__c = 'Vitap';
        emp.Last_Name__c = 'Ramdevputra';
        emp.Country__c= 'India';
        emp.JoinDate__c = date.newInstance(2022,5,5);
        emp.Email__c = 'vitap_r@gmail.com';
        emp.salary__c = 130000;

        insert emp;
        
    }

    public static void dmlUpdateDemo1() {
        
        account acc = new account();
        acc.Name = 'Softinnovas';
        system.debug('before insert DML: ' + acc);
        insert acc;
        system.debug('after insert DML: ' + acc);

        //can update record if we have record id.
        acc.Name = 'Softinnovas INC.';
        acc.Website = 'www.softinnovas.com';

        
        update acc;
        system.debug('after update dml: ' + acc);
   }
   public static void dmlUpdatedemo2() {
     account acc =[select id, name from account order by createddate desc limit 1];
      acc.name = 'Softinnovas Inc. ';
      //system.debug('website:'+ acc.website)--will NOT WORK
      //acc.website = 'www.sfinnovas.com'; --- WILL Work
      update acc;
   }

   public static void dmlInsertDemo3() {
    //soql to get acc record
    account acc= [select id, name from account order by createddate desc limit 1];
    
    contact c = new contact();
    c.lastname = 'Trump';
    //relationship via accountid
    c.accountid = acc.id; //get id from account id

    insert c;

   }
   public static void insertRelatedRec() {
    // get latest created department
    // create one employee for that dep.
    department__c dept = [select id, name from department__c order by createddate desc limit 1];
    employee__c e = new  employee__c (); 
    e.First_Name__c = 'Don';
    e.Last_Name__c = 'eladio';
    e.salary__c = 500000 ; 
    e.department__c = dept.id;
    e.Country__c = 'Mexico';
    insert e;
    system.debug('emp: '+ e);
 }
  public static void bulkInsert() {
  list<account> listAcc = new list<account>();
  for (Integer i = 0; i < 155; i++) {
    account ac = new account();
    ac.name= 'test acc '+ i;
    //add acout to the list
    listAcc.add(ac);
  } 
  // if list is not empty then only insert
  if(!listAcc.isEmpty()){
    insert listAcc;
   } 
  }
  public static void bulkUpdate() {
    list<account> listAcc = [select id, name from account where createddate = today];
    for (account eachAcc: listAcc) {
        eachAcc.name += 'v2';
    }
    update listAcc;
  }
  public static void updateDescription() {
    list<account> allAccounts = [select id, name, description, active__c from account];
 // fetch the filed that we need
    list<account> updateAccList = new list<account>();

    for (account eachAcc : allAccounts) {
        if(eachAcc.active__c=='No' || string.isBlank(eachAcc.active__c)){
            eachAcc.description = 'inactive';
            updateAccList.add(eachAcc);
        }
    }
    update updateAccList; 
  }
  
 }