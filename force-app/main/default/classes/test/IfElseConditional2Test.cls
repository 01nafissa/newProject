@isTest 
public  class IfElseConditional2Test {
    @isTest 
    private static void positiveOrNegativeTest() {
        IfElseConditional2 iec = new IfElseConditional2();
        string msg = iec.positiveOrNegative(5);
        assert.areEqual ('Positive', msg);

        string msg2 = iec.positiveOrNegative(-7);
        assert.areEqual ('Negative', msg2);

        string msg3 = iec.positiveOrNegative(0);
        assert.areEqual ('Sifir', msg3);
    }
    @istest 
    private static void phoneTest() {
        IfElseConditional2 iec = new IfElseConditional2();
        string msg1 = iec.phone('2126095452') ;
        assert.isNotNull(msg1);
        
        string msg2 = iec.phone('2166095452') ;
        assert.isNotNull(msg2);

        string msg3 = iec.phone('3126095452') ;
        assert.isNotNull(msg3);

        string msg4 = iec.phone('3126092') ;
        assert.isNotNull(msg4);
    }
}