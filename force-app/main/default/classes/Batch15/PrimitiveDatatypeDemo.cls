public class PrimitiveDatatypeDemo {
    public void print1(){
        string batchname = 'Batch 15 ';
        integer totalCandidates = 54 ;
        boolean isAdminCompleted = true;

        string batchDescription = batchname + ' has ' + totalCandidates +' candidates, and is the best';
        system.debug(batchDescription);
    }
       
    public void print2(){
        Decimal d1 = 556.566;
        system.debug('d1 is ' + d1);

        Long l1 = 6566664446L;
        system.debug(l1);

        Double dd1 = 454446545.46;
        system.debug('dd1 ' + dd1);

        id accId = '0013x00002RZ2c0AAD';
        system.debug('acc id is ' + accId);

        object obj1 = 99;
        object obj2 = 'assign string to object';
        object obj3 = true;
        object obj4 = l1;
        object obj5 = accId;
        system.debug( obj1);
        system.debug( obj2);
        system.debug( obj3);
        system.debug( obj4);
        system.debug( obj5);
    }
}