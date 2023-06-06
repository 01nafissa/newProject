public class DML2_Assg {
    public static void insert_dml() {
        account acc1= new account();
        acc1.name = 'Nafissa Assignment';
        insert acc1;
        system.debug('inserted acc: '+acc1);
        
        account acc2= new account();
        acc2.name = 'Aina Assignment';
        insert acc2;
        system.debug('inserted acc: '+acc2); 
    }
public static void updating_dml() {
    account acc3 = new account();
    acc3.name = 'Account Created';
    insert acc3;
    system.debug('after insert DML: ' + acc3);

    acc3.name = 'Account Updated';
    update acc3;
    system.debug('after update dml: ' + acc3);
}
}