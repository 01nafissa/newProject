public  class ModernMaths {
    public  void printFactors (integer num){
        list<integer> factors = new list<integer>();

       for (Integer i = 1; i<= num; i++) {
        integer remainder= math.mod(num, i);
        if(remainder==0){
            factors.add(i);
        }
        
       }
      system.debug('The factors of '+ num + 'are ' + factors);
    }
}
   