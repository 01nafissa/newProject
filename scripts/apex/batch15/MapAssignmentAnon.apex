map<string, integer>  marksObtainInMaths = new map<string, integer>{'0111CE112' => 40, '0111CE102' => 19,'0111CE100' => 33, '0111CE098' => 40};
marksObtainInMaths.put('0111CE077', 25);
marksObtainInMaths.put('0111CE205', 30);
set<string> allRollNum=marksObtainInMaths.keySet();
system.debug('All StudentRoll Number => '+ allRollNum);
list<integer> allMarks = marksObtainInMaths.values();
system.debug('All Marks Obtain => '+ allMarks);

set<string> uniqueRollNumberSet= new set<string>();
for(string eachRollNum: allRollNum){
    uniqueRollNumberSet.add(eachRollNum);
}
system.debug('new lits '+uniqueRollNumberSet);

list<integer> marksObtainList = new list<integer>();
for(string each: allRollNum){ 
integer mark1=marksObtainInMaths.get(each);
//marksObtainList.add(mark1);

if(mark1<20)
    system.debug(each+  ' is not qualified for next class');
}
//system.debug('mark list '+ marksObtainList );