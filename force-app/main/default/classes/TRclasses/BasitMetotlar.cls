public  class BasitMetotlar {
   public  void hosgeldin() {
    string message = 'hosgeldin!';
system.debug(message);
   }
   public static string hosgeldinIsim(string isim) {
    string message = 'hosgeldin' + isim;
    return message;
   }

   public static integer toplama(integer a, integer b) {
    return a+b;
   }

   public static void ifNumber(integer a, integer b) {
    if(a>b){
        system.debug(a+ ' sayisi' + b+ ' sayisi buyuktur' );

    }else if(b>a){
        system.debug(b+ ' sayisi' + a+ ' sayisi buyuktur' );
    }else{
        system.debug(a+ ' sayisi' + b+ ' sayisi esittir' );
    }
   }
}