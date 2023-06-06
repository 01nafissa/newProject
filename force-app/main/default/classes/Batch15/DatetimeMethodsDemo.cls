public  class DatetimeMethodsDemo {
    public  void  calculateAgeInMonths() {

    date todaydate = date.today();

    date myBithdate = date.newInstance(1991, 1, 10);

    datetime myyBirthday = datetime.new
    integer ageInMonths = myBithdate.monthsBetween(todaydate);
    system.debug('My age in months is  ' + ageInMonths);

    }

    public void calculateAgeInDays(){
        date todayDate = date.today();

        date myBithdate = date.newInstance(1991, 1, 10);
        integer ageInDays = myBithdate.daysBetween(todayDate);
        system.debug('My age in days is   '+ ageInDays);

    }

    public void subscriptionEndDate(){
        date todayDate = date.today();
        date subsEndDate = todayDate.addDays(1000);
        date endSubsDate = date.today();
        date startSubscdate = todayDate.addDays(-1000);
        system.debug('subscription end date is  '+ subsEndDate);
        system.debug('subscr. start date '+ startSubscdate );

        // to just get year from date
        integer newSDYear = startSubscdate.year();
        // to get month 
        integer newSDMonth = startSubscdate.month();

        system.debug('year of the subscription ' + newSDYear);
        system.debug('month of the subscription ' + newSDMonth);


    }
    public void offerEndDateTime(){
        datetime offerStart = datetime.now();

        datetime offerEnd = offerStart.addHours(51);
        system.debug('offer end datetime '+ offerEnd);
    }
     public void 
}