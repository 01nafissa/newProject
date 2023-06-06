@isTest 
public  class ForLoopTest {
    @isTest 
  private static void sumTest() {
    ForLoop fl = new ForLoop();
    fl.sum(5);
  }  
  @isTest 
  private static void helloTest() {
    ForLoop fl = new ForLoop();
    string msg= fl.hello('Ali');
    assert.isNotNull(msg);
    assert.areEqual(' hello 1 hello 2 hello 3', msg);
  }
}