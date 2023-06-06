public class Loops_assignment {
    public void whileLoopMethod(integer n) {
        integer i = 1;
        while (i<=n) {
            system.debug(i);
            i++;
            }

     }
     public void printEven(){
        integer i = 1;
    while( i <=100){
            integer remainder = math.mod(i, 2);
            if (remainder == 0){
                system.debug(i);
        }
         i++;
     }
     }
     public void printPower(integer n){
        integer var=1;
        for (Integer i = 0; i < n; i++) {//0,1,2,3,4,
            var*=n;//var=*n -->1*5
            
        }//5*5*5*5
        system.debug(var);
        }
     }
