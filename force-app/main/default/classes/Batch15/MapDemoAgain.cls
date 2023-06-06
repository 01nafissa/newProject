public  class MapDemoAgain {
    public static void printMap1(){
        map<integer, string> map1 = new map<integer, string>();
        map1.put(1011, 'Alex');
        map1.put(1022, 'Monica');
        map1.put(1033, 'Lui');
        map1.put(1011, 'Amar');
        system.debug(map1);

        //get Value from Key
        string studentName = map1.get(1011);
        system.debug('student namefor 1011: '+ studentName); 

        integer rollNo2 = 1055;
        if(map1.containsKey(rollNo2)) {
            system.debug(rollNo2 + 'student name: '+map1.get(rollNo2));
        }else{
            system.debug('No such roll number in student records');
        }
    }

    public static void printMap2(){
        map<integer, string> map1 = new map<integer, string>();
        map1.put(1011, 'Alex');
        map1.put(1022, 'Monica');
        map1.put(1033, 'Lui');
        map1.put(1011, 'Amar');
        map1.put(1055,'Monica');
        system.debug(map1);

        // to get the keys we use KeySet method
        set<integer> allRollNo= map1.keySet();// return as SET<>
        system.debug('number of roll numbers: ' + allRollNo.size());
        system.debug('all roll numbers: '+allRollNo);

        list<string> allStudent = map1.values();
        system.debug('all students: '+ allStudent);

        //putAll- add another map

        map<integer, string> m2 = new map<integer, string>();
        m2.putAll(map1);
        system.debug('m2 is:' + m2);
    }

    public static void printMap3(){
        map<integer, string> map1 = new map<integer, string>();
        map1.put(1011, 'Alex');
        map1.put(1022, 'Monica');
        map1.put(1033, 'Lui');
        map1.put(1011, 'Amar');
        map1.put(1055,'Monica');
        map1.put(1066,'Alex');
        map1.put(1077,'Ben');
        system.debug(map1);

        //1.print roll no i 1001, studen

       //1.a get all the keys
       set<integer> allKeys = map1.keySet();
       for (integer eachKey : allKeys) {
        string sn=map1.get(eachKey);//student name
        system.debug('roll number '+ eachKey+ ',student name is '+ sn);

       }
    }

    public static void printMap4() {
        map<string, list<string>> m9 = new map<string, list<string>> ();
        list<string> itTeam = new list<string>{'Brian','Sam'};
        list<string> salesTeam = new list<string>{'Monica','Alex'};
        list<string> serviceTeam = new list<string>{'John','Nick'};

        m9.put('IT', itTeam);
        m9.put('Sales', salesTeam);
        m9.put('Service', serviceTeam);

        system.debug(m9);

        list<list<string>> listValue = m9.values();

        set<string> allTeams = m9.keySet();
        for (string  eachTeam : allTeams) {
          list<string> eachTCandid =  m9.get(eachTeam);
          system.debug('team name: '+eachTeam);
          system.debug('Team members=> '+eachTCandid);

          //for each loop for the list of members

          for (string  eachMember : eachTCandid) {
            system.debug(eachMember+ ' is in '+ eachTeam);
            
          }
        }

    }

}