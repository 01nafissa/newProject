public  class SetDemo {
    public static void citySet(){
        set<string> cities = new set<string>();
        cities.add('Istanbul');
        cities.add('Antalya');
        cities.add('Antalya');
        cities.add('Izmir');
        cities.add('IZMIR');
        cities.add('Nevsehir');

        system.debug('set of cities: '+ cities );
    }
    public static void randomIntegerSet(){
        set<integer> intSet = new set<integer>();
        intSet.add(10);
        intSet.add(10);
        intSet.add(25);
        intSet.add(80);
        intSet.add(5);
        intSet.add(10);

        system.debug(intSet);

    }
    public static void setFromList(){
        // addAll -> conver from list to set
        list<integer> li = new list<integer>{1,2,3,4,5,5,7,8,8};
        system.debug('list integer:' + li);

        set<integer> si= new set<integer>();
        si.addAll(li);
        system.debug(si);

        list<integer> newLi= new list<integer>();
        newLi.addAll(si);
        system.debug(newLi);

    }
    // set of string and convert each element to UppeCase and store in another set
    public static void upperCaseSet(){
        set<string> cities = new set<string>();
        cities.add('Istanbul');
        cities.add('ISTANBUL');
        cities.add('Antalya');
        cities.add('Antalya');
        cities.add('Izmir');
        cities.add('IZMIR');
        cities.add('Nevsehir');
        system.debug('cities:'  + cities);

        set<string> citinCaps=new set<string>();
         for (string eachCity : cities) {
            string temp = eachCity.toUpperCase();
            citinCaps.add(temp);
           
         }
           system.debug('cities in capital :  ' + citinCaps); 

    }
    public static set<string> upperCaseSet(set<string> s1){
        set<string> inCaps= new set<string>();
        for (string eachStr : s1) {
            inCaps.add(eachStr.toUpperCase());
            
        }
        //return new set with upper case 
        return inCaps;

    }

}
    