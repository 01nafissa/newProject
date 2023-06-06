public class PrimitivedatatypeDemo2 {
    public void printNewdate() {
        system.debug('create new date variable');

        date  newdate1 = date.newInstance(1991 ,1 ,10);
        system.debug(newdate1);


        date  newdate2 = date.newInstance(2020 ,1 ,10);
        system.debug(newdate2);

        date todayDate = date.today();
        system.debug( 'today\'s date is --> ' + todayDate);

    }

    public void printNewTime(){
        Time mytime = time.newInstance(11, 10,30,50);
        system.debug(mytime);

        Time mytime1 = time.newInstance(21, 12,15,50);
        system.debug(mytime1);
        
    }

    public void printNewDateTime(){
        date  newdate1 = date.newInstance(1991 ,1 ,10); 
        Time mytime = time.newInstance(11, 10,30,50);
        //1,
        datetime dt1 = datetime.newInstance(newdate1,mytime );
        system.debug('dt1 is ' + dt1);

        //2, using year, Month, day---> time will be midnight
        // it create datetime with user1s timezone midnight
        datetime dt2 = datetime.newInstance(2021,4,5);
        system.debug('dt2 is' + dt2);

        //3, datime using year, month, day, hour, min, sec
        datetime dt3 = datetime.newInstance(2021,5,19,6,15,50);
        system.debug('dt3 is ' + dt3);

        //6. current datetime
        datetime dt6 = datetime.now();
        system.debug('dt6 is  '+ dt6);

    
    }

    public void printNewDateTime2(){

        long  longTime = 2354878745000L;
        datetime dt55 = datetime.newInstance(longTime);
        system.debug('dt55 is ' + dt55); //1970-

        datetime dt4 = datetime.newInstanceGmt(2021, 10, 40, 15, 45,50);
        system.debug('dt4 ' + dt4);
    }
}