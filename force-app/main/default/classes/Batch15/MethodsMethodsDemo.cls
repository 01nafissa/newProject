public class MethodsMethodsDemo {
    public void print1() {
        system.debug('1. print this first');


    }
    public void print2(){
        system.debug('2.print second');
    }
    public void print1nad2(){
        print1();
        print2();
    }
    public void print3(){
        system.debug('3.print this word');
    }
    public void printAll(){
        system.debug('0000');
        print1nad2();
        system.debug('1111');
        print3();
        system.debug('2222');
    }
}