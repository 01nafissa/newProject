public  class MapDemo2 {
    public static void mapEx2() {

        map<string, decimal> map2 = new map<string, decimal>();
        map2.put('apple', 5.5);
        map2.put('peach', 10.5);
        map2.put('kiwi', 30.5);
        map2.put('lemon', 25.00);
        system.debug('Map2 is ' +  map2);

        map<string,decimal> lowerMap = new map<string,decimal>();
        map<string,decimal> higherMap = new map<string,decimal>();

        set<string>allItems = map2.keySet();
        for(string eachItem : allItems){
            //get value of each price
           decimal eachPrice = map2.get(eachItem);
           
           if (eachPrice>20){
            higherMap.put(eachItem, eachPrice);
            system.debug('Higer: ' + eachItem + '--> '+ eachPrice );
           }else { 
            lowerMap.put(eachItem, eachPrice);
            system.debug('Lower: ' + eachItem + '--> '+ eachPrice );
           }
        }
        system.debug('higher map is ' + higherMap);
        system.debug('lower map is ' +lowerMap);

  
    }

    public static string retrieveMonth(integer m){
        string month = '';
     
        map<integer, string> monthMap = new map<integer, string>{1=> 'January', 2=> 'February'};
        monthMap.put(3, 'March');
        monthMap.put(4, 'April');
        monthMap.put(5, 'May');
        monthMap.put(6, 'June');
        monthMap.put(7, 'July');
        monthMap.put(8, 'August');
        monthMap.put(9, 'Spetember');
        monthMap.put(10, 'October');
        monthMap.put(11, 'November');
        monthMap.put(12, 'December');

        //get month name from integer m(param)
        if(monthMap.containsKey(m)){
            month = monthMap.get(m);
        }else{
            month = ' no such month exists';
        }
      
        return month;
    }
}
    