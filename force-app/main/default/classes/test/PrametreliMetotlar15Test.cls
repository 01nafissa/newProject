@isTest
public  class PrametreliMetotlar15Test {
    @isTest
    private static void printWelcomeTest() {
        PrametreliMetotlar15 pm = new PrametreliMetotlar15();
        pm.printWelcome();
    }
    @isTest
    private static void welcomePersonTest() {
        PrametreliMetotlar15 pm = new PrametreliMetotlar15();
        pm.welcomePerson('John');
    }
    @isTest 
    private static void toplamaTest() {
        PrametreliMetotlar15 pm = new PrametreliMetotlar15();
        integer tplm = pm.toplama(11, 12);
        assert.areEqual(23,tplm);
    }
    @isTest 
    private static void artikYilTest() {
        PrametreliMetotlar15 pm = new PrametreliMetotlar15();
        date dt =date.newInstance(2023, 5, 24);
        boolean result = pm.artikYil(dt);
        assert.isFalse(result);
    }
    @isTest 
    private static void uzunlukTest() {
        PrametreliMetotlar15 pm = new PrametreliMetotlar15();
        integer uz = pm.uzunluk('all');
        assert.areEqual(3, uz);
    }
}