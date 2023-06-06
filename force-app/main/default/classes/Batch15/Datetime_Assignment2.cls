public  class Datetime_Assignment2 {
    public void  diffofDate(){
        date  varTomorrowDate = date.newInstance(2023,4,5);
        date varTodaysDate = date.newInstance(2023,4,4);
        integer diffBetween = varTodaysDate.daysBetween(varTomorrowDate);

        system.debug('tomorrow is  '+ varTomorrowDate);
        system.debug(' today is  '+ varTodaysDate);
        system.debug('difference between these 2 days is  '+ diffBetween);


    }

    public void timecheck(){
        Datetime  varTomorrowDatetime = datetime.newInstance(2023,4,6,7,00,00);
        Datetime  var10DaysDatetime = datetime.newInstancegmt(2023, 4, 16,9,00,00);

        Long  varDatetimeLong = 12339874361L;
        Datetime sevendaysMore = varTomorrowDatetime.addDays(7);
        Datetime tendaysMore = var10DaysDatetime.addDays(10);

        system.debug('Tomorrow Date and Time --> ' + varTomorrowDatetime);
        system.debug('10 days later --> ' + var10DaysDatetime);
        system.debug('Date time Long  --> ' + varDatetimeLong);
        system.debug('add 7 days --> ' + sevendaysMore);
        system.debug('add 10 days --> ' + tendaysMore);


    }
}