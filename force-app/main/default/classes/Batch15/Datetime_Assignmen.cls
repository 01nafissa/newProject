public  class Datetime_Assignmen {
    public void dateMethods() {
        date varDate =  date.newInstance(2001,1,1);
        system.debug ('var date is  ' + varDate);

    }

    public void timeMethods(){
        Time varTime = time.newInstance(18,21,29,00);
        system.debug('Time is   ' + varTime);
    }

    public void dateTimeMethods(){
        datetime vardateTime = datetime.newInstanceGmt(2001,1,1,18,21,29);
        system.debug('date & time is  ' + vardateTime );
    }


}