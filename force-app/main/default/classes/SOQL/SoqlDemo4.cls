public  class SoqlDemo4 {
    public static void groupByQuery() {
       list<aggregateResult> result= [select country__c, count(id),sum(salary__c) from Employee__c group by Country__c];
       for (aggregateResult agr : result) {
        system.debug('country name is ' + agr.get('country__c'));
        system.debug('number of employee ' + agr.get('expr0')); //expression1
        system.debug('country name is ' + agr.get('expr1'));
       } 

       //list<string> l2 = new list<string>();
       //string[] l3 = new list<string>();
       //account[] acc2 = [select id, name from account];// same as list<>
    }
    public static void accDynamicSOQ1(string accFieldNames) {

        string query = 'select ';
        query+= accFieldNames;
        query+= ' from account';

        system.debug('final query is: '+ query);
        list<account> listAcc = database.query(query);
        for (account eachAcc : listAcc) {
            system.debug(eachAcc);
        }
        
    }
}