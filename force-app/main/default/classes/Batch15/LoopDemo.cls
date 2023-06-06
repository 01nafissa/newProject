public class LoopDemo {
    //print 1 to 25 

 public void print_int_while(){
    //1. initialize
    integer i = 1;
    while( i <=25){

        system.debug(i);
        i++;
    }
    system.debug('after while i => ' + i);
}
public void print5multiple(integer n){
    integer i = 1;
    while(i <=n){
        integer remainder = math.mod(i , 5);
        if (remainder == 0){
            system.debug(i);
        }
        i++;
    }
}
}