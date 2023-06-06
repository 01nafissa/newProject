public  class RandomSayi {

    public static integer oyunSayisi = 0;
    public static integer skorum = 0;

   public static string randomNumber(integer num) {
    //computer will set a number from0 to 10
    
    string message;
    integer  bilgiSayisi = math.round(math.random()*10);
    //it will compare the number "7" to random number
    if(num>=0  && num<=10){
        oyunSayisi++;
        system.debug('====' +oyunSayisi+ '======');
        if( bilgiSayisi ==num){
            message = 'Dogru tahmin..Kazandiniz!';
        }else{
            message = 'Yanlis tahmin..tekrar deneyin.';
        }

    }else{
        message='Lutfen o\'dan 10\'a kadar bir sayi giriniz';
    }
    system.debug('Bilgisayar = ' + bilgiSayisi);
    system.debug('Benim sayim = ' + num);
    system.debug(oyunSayisi + 'oyun oynadiniz='+skorum);

    return message;
   }
   
}