public  class Dogs {
    string name;
    string color;
    integer age;

     public Dogs(){
        
        age=1;
        checkAge();
     }
     public Dogs(string nm, string col, integer ag1){
        name= nm;
        color= col;
        age=ag1;
        checkAge();

     }
     public void checkAge(){
        if (age>=0 && age<=1){
            system.debug('Puppy Dog');

        }
        else if(age<=3){
            system.debug('Young Dog');
        }
        else if(age<=5){
            system.debug('Adult Dog');
        }
        else {
            system.debug('Old dog');
        }

     }
    
     
}
    