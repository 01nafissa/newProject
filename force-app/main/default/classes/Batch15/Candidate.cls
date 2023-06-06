public with sharing class Candidate {
   public string name;
   public string gender;
   public static string companyName;
   public static integer count =0;

   public Candidate(){
    count++;
   }


   public void details(){
    system.debug('Name is ' + name);
    system.debug('Gender is ' + gender);
    system.debug('Company name is ' + companyName);
    system.debug('---------');
   
   

   }
}