//One TestClass Per class or trigger.
//@isTest annotation is used to make our class as a TEST Class.
@isTest
public class CalculatorTest {
   //create test method inside test class
        //Test method means we are write method to TEST a unit of our actual code
   //req for test method - public or private, static, returns void, and take no parameter
   @isTest
   public static void testMethod1(){
        Calculator c = new Calculator();
        c.add(1.1,8.5);
   }
   @isTest

private static void testAddMethod(){
    calculator c = new calculator();
    integer sum = c.add(5,5);
    //assertion
   System.assertEquals(10, sum);// old way - old code will have this assertion
   Assert.areEqual(10, sum); // new way - new code sgould have this assertion
}
@isTest
 public static void testAddMethods() {
    calculator c = new calculator();
    integer sum = c.add(5,5,5);
    //assertion
   System.assertEquals(15, sum);// old way - old code will have this assertion
   Assert.areEqual(15, sum); // new way - new code sgould have this assertion
}
@isTest
public static void leapCheck() {
    calculator c = new calculator();
    boolean lp = c.leapYearCheck(date.today());

    assert.areEqual(false, lp);
    assert.isFalse(lp);// or this

}