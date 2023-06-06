public class StringMethodsdemo {
    public void StringMethod1() {
        system.debug('practice string methods');
        string sDesc = 'learning string methods in apex language';

        integer strLength = sDesc.Length();
        system.debug('Length of string is ' + strLength);

       // 2. convert to Uppecase
       string upSDesc = sDesc.toUppercase();
       system.debug('uppercase string ==> '+ upSDesc);

       //3. check if the string contains 'apex' in it
       boolean checkApex = sDesc.contains('apex');
       system.debug('check if the string contains apex ==> ' + checkApex);

       //3b check is string contains salesforce
       boolean chechSalesforce = sDesc.contains('salesforce');
       system.debug('check if string contains salesforce ==>' + chechSalesforce);

       //3.c check if string contains Apex
       boolean checkApex2 = sDesc.contains('Apex');
       system.debug('Apex contains in string ==>' + checkApex2);

       // containsIgnoreCase means --> apex==Apex==aPEX==

     boolean checkApex3 = sDesc.containsIgnoreCase('Apex');
     system.debug('Apex contains in string ==>' + checkApex3);


    }

    public void StringMethod2(){
        //1. trim
        string username = ' Nafissa A ';
        system.debug('actual length '+ username.length());

        username = username.trim();
        system.debug('after trim ' + username);
        system.debug(username.length());

        string username2 = 'nafissa';
        //check if username is same as username1
        boolean checkNames = username.equals(username2);
        system.debug('check if username is same as username2 --> ' + checkNames);

        boolean checkNames2= username.equals('nafissa a');
        system.debug('check if username is same as nafissa a-->' +checkNames2);

        boolean checkNames3 = username.equalsIgnoreCase('nafissa a');
        system.debug( 'check if username is same as username2 (ignoreCase)--> '+checkNames3);

       

    }
}