DatetimeMethodsDemo dm = new DatetimeMethodsDemo();
dm.offerEndDateTime();
dm.subscriptionEndDate();
dm.calculateAgeInDays();
dm.calculateAgeInMonths();


 date myBithdate = date.newInstance(1991, 1, 10);

    datetime myyBirthday = datetime.newInstance(1991,1,10);
    long myLongBirthdate = myyBirthday.getTime();
    system.debug('my birthdate in milliseconds from 1970  ' + myLongBirthdate);