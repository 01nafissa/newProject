List<string> isimList = new List<string>();
isimList.add('Sevval');
isimList.add('Ihsan');
isimList.add('Merve');
isimList.add('Azra');
system.debug('isim listesi => ' + isimList);
system.debug(isimList.get(2));
system.debug(isimList[2]);

//Shopping list olusturalim
List<string> shoppingList = new List<string>{'kalem','silgi','defter', 'cetvel'};
system.debug(shoppingList);
shoppingList.add('kalemtiras');
system.debug(shoppingList);
boolean isThere= shoppingList.contains('zimba');
if(!isThere){
    shoppingList.add('zimba');
    system.debug(shoppingList);
}
system.debug(shoppingList);
integer elemanSayi = shoppingList.size();
System.debug('=======listenin her elemaninin yazilisi=======');
for (integer i=0; i<elemanSayi; i++){
    system.debug(shoppingList.get(i));
}
System.debug('======listenin elemanlarinin tersten yazilisi=======');
for (Integer i = elemanSayi-1; i >= 0; i--) {
    System.debug(shoppingList.get(i));
}