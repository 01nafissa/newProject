//MapDemo.mapStringInteger();
// map of string 
map<string, string> mapCC = new map<string, string>();
mapCC.put('USA', 'Dollar');
mapCC.put('France', 'Euro');
mapCC.put('Prtugal', 'Euro');
mapCC.put('India', 'Pupees');
mapCC.put('India', 'Rupee');
mapCC.put('Turkiye', 'Lira');
mapCC.put('Kazakhstan', 'Tenge');
mapCC.put('usa', 'dollar');
system.debug(mapCC);

string currIndi= mapCC.get('India');
system.debug(currIndi);

string country= 'Turkiye';
string curr= mapCC.get(country);
system.debug(country + ' currency is ' + curr);

//set<string> allCountry=mapCC.keySet();//output set of key
//system.debug('all countries '+ allCountry);

//get all the currency in the list
//list<string> allCurrencies= mapC.values();
//system.debug('all currencies=>'+ allCurrencies);

set<string> allCountry=mapCC.keySet();

for (string eachCtry: allCountry){
    //system.debug('country is '+ eachCtry);
    string eachCurrency = mapCC.get(eachCtry);
   //system.debug('Currency is '+eachCurrency );
    system.debug('Country is '+ eachCtry +' , its currency is '+ eachCurrency);
}