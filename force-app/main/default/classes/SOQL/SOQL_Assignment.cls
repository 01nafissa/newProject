public  class SOQL_Assignment {
   public static void oql_WhereClause() {
    list<Contact>  lstcontac= [select id, name from contact where name like 'A%' ];
     system.debug('Contact List=> '+ lstcontac);
     system.debug('Size of the list=> '+lstcontac.size());
   }

   public static void soql_FromMethod() {
    list<Contact>  lstcontac= [select lastName, phone from contact ];
    for (contact  eachContact : lstcontac) {
        system.debug('Contact Last Name: '+eachContact.LastName);
        system.debug('account Phone Number: '+eachContact.Phone);
        system.debug('----------');
        
    }
    
   }
}