public  class ForLoopDemo {

    public void print_Hello() {
        for(integer i = 1; i<=10 ; i++){
            system.debug('hello');
        }

    }

    public void print_N_numbers(integer n){
        string printStr = '';
        for (Integer i = 0; i < n; i++) {
            printStr = printStr + i+ ' ,';
        }
        system.debug(printStr);



    }
     public void print_N_numbers2(integer n){
        string s ='this';
        s += ' is a string';
        for (Integer i = 0; i < n; i++) {
            s+= i;
            system.debug(s); // this is a string012345
            
        }
        system.debug(s);
    }
        public void print_N_odd_numbers(integer startInt, integer endInt){
        for(integer i = startInt; i< endInt; i++){
            //print only if i is ODD
            integer remainder = math.mod(i, 2);
            if(remainder ==1) {
                system.debug(i);
            }
        }
     }
}