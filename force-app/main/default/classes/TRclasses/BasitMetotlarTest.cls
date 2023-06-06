@isTest 
public  class BasitMetotlarTest {
    @isTest 
    private static void hosgeldinTest() {
        test.startTest();
        BasitMetotlar bm = new BasitMetotlar();
        bm.hosgeldin();
        test.stopTest();
    }
    @isTest 
    private static void hosgeldinIsimTest() {
        test.startTest();
        string msg =BasitMetotlar.hosgeldinIsim('Nefise');
        test.stopTest();
        assert.areequal( 'hosgeldinNefise', msg);
    }
    @isTest 
    private static void toplamaTest() {
        test.startTest();
Integer tpl = BasitMetotlar.toplama(2,3);
        test.stopTest();
        assert.areequal(5,tpl);
    }
    @isTest 
    private static void ifNumberTest() {
        test.startTest();
        BasitMetotlar.ifNumber(4,8);
        BasitMetotlar.ifNumber(7,3);
        test.stopTest();
    }
}