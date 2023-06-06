public  class Collections_Assignment {
    public static void listMethods(){
        list<string> daysOfWeek =new list<string> {'Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday'};
        system.debug('List days ' + daysOfWeek);

        daysOfWeek.add('Sunday');
        system.debug('day added list ' + daysOfWeek);

        integer siize = daysOfWeek.size();
        system.debug('size of the list=> ' + siize);

        integer idx = daysOfWeek.indexOf('Tuesday');
        system.debug('index of tuesday=> ' +idx );

        boolean cont= daysOfWeek.contains('Thursday');
        system.debug('is Thursday in the list? =>' + cont);

        string a = daysOfWeek.get(1);
        system.debug('the second day on the list=> '+ a);

        daysOfWeek.remove(7);
        system.debug('remove the last added=> '+  daysOfWeek);

        list<string> daysOfWeek2 =new list<string> {'Mon','Tues','Wednes','Thurs','Fri','Sat','Sun'};
        system.debug('second list is ' + daysOfWeek2);

        boolean equality = daysOfWeek.equals( daysOfWeek2);
        system.debug('lists equals=> '+ equality);

        daysOfWeek2.clear();
        system.debug(  'clear second list ' + daysOfWeek2);

        boolean q = daysOfWeek2.isEmpty();
        system.debug('the list is empty=> '+q );

    }
    public static void setMethods(){
        set<string> setD =new set<string> {'Monday','Tuesday','Wednesday','Thursday','Friday','Saturday'};
        system.debug('Set of  days ' + setD);

        setD.add('Sunday');
        system.debug('day added list ' + setD);

        boolean contain= setD.contains('fuNday');
        system.debug('is FuNday in the list? =>' + contain);

        setD.remove('Monday');
        system.debug('Set after 1item removed=> '+  setD);

        set<string> setD2=new set<string> {'Mon','Tues','Wednes','Thurs','Fri','Sat','Sun'};
        system.debug('second set => ' + setD2);

        integer siize1 = setD2.size();
        system.debug('size of the list=> ' + siize1 );

        boolean b = setD2.isEmpty();
        system.debug('the list is empty=> '+b);

        boolean c = setD2.equals(setD);
        system.debug('is the sets equals =>' + c);

        setD2.addAll(setD);
        system.debug('second set after adding all=> ' + setD2);

        string Str = setD.toString();
        system.debug('set to string=> '+ Str);


    }
}