public  class ForEachLoopAgain {
    public static void printCountryForEach() {
        set<string> coun = new set<string>{'Germany', 'Mexico',
        'Canada', 'United Kingdom', 'United states'};

        set<string> coun2 =new set<string> ();
        for (string eachCountry : coun) {
            system.debug(eachCountry);
            integer len = eachCountry.length();
            if(len>8){
                coun2.add(eachCountry);
            }
            
        }
        system.debug('coun2 is '+ coun2);
        
    }
}