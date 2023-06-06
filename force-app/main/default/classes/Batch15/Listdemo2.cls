public class Listdemo2 {
    public static void iterateList(){
        List<integer>intList = new list<integer>();
        intList.add(90);
        intList.add(15);
        intList.add(77);
        intList.add(21);
        intList.add(15);
        intList.add(15);
        intList.add(90);
        intList.add(15);
        intList.add(77);
        intList.add(21);
        intList.add(15);
        intList.add(15);
        
        system.debug(intList);

        // print each element one by one
        for (integer eachNumber : intList) {
            
            
            system.debug('5 x'+ eachNumber + ' = ' + eachNumber*5);
        }
    
    }

    public static integer add(list<integer> l1){
        integer sum = 0;
     system.debug(l1);

     for (integer eachNum : l1) {
        sum+= eachNum;
        
     }
        return sum;
    }

    public static void iterateListString(list<string> l2){
        //print 
        system.debug(l2);
        for (string eachStr : l2) {
            system.debug(eachStr + ' its length is '+ eachStr.length());
            
        }
    }
    public static void iterateListString11(){
        list<string> ls = new list<string>{'list', 'set', 'map', 'array'};
     ls.add('methods');
     ls.add('constructor');
    list<string> newList = new list<string>();
    // add each string - length of the string in the same line
    // we cannot modify (add /remove ) elements in the list while using FOR EACH LOOP
    for (string eachStr : ls) {
        string temp = eachStr + '-'+ eachStr.length();
        newList.add(eachStr);
        newList.add(temp);
        }
    }
}