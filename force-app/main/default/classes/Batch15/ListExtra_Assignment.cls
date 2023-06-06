public  class ListExtra_Assignment {
     public static list<string> schoolsList(string medium){
        list<string> schools = new list<string> {'S1 English', 'S2 English', 'S3 Turkish', 'S4 English', 'S5 Turkish', 'S6 Japanese'};

        list<string> mediumSchools = new list<string> ();
        for (string eachSchool : schools) {
            if(eachSchool.contains( medium)){
                mediumSchools.add(eachSchool);
            }   
        }
        return mediumSchools;
     }
     public static Map<String,List<String>> schoolsMaps (string medium) {
        Map<String,List<String>> SchoolsMap1 = new  Map<String,List<String>> ();
        list<string> schools = new list<string> {'S1 English', 'S2 English', 'S3 Turkish', 'S4 English', 'S5 Turkish', 'S6 Japanese'};

        list<string> keylist = new list<string>{'English','Turkish', 'Japanese'};
        list<string> mediumSchools = new list<string> ();
        for (string eachSchool : schools) {
            if(eachSchool.contains( medium)){
                mediumSchools.add(eachSchool);
            }
                
                list<string> eachMedium = new list<string> ();
                for (string eachMap : keylist) {
                    SchoolsMap1.put(medium, mediumSchools);
                   // system.debug(eachMap ,eachSchool );
                    
                
            }   
        }
        return SchoolsMap1;
        
     }
}