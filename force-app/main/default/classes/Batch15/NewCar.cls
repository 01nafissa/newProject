public  class NewCar {
    integer currentSpeed = 0;
    String carType;
    String carName;

    public void startCar(String tp,String nm){
        carType=tp;
        carName=nm;
        system.debug('car type is '+ carType);
        system.debug('Car name is ' + carName);
        
    }
    public void accelerate (integer x){
        currentSpeed +=x;
        system.debug(x);  
    }
    public void Brake (integer y){
        currentSpeed-=y;
        system.debug( currentSpeed); 
    }
    public void stopCar (){
        currentSpeed=0;
        system.debug(currentSpeed);
    }
    public void checkSpeed(){
         if(currentSpeed<=30){
            system.debug ( 'City Mode');
        }else if(currentSpeed<=60){
            system.debug('Economy Mode');
        }else{
            system.debug('Sports Mode'); 
        } 
    }
}