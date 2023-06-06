public  class Books {
    string kitapAdi;
    string yazar;
    decimal fiyat;
    public static integer kitapSayisi=0;

    public Books(){
        kitapSayisi++;
        system.debug('Kutuphsnemize yeni kitap eklendi. kitap sayimiz ' + kitapSayisi+ ' oldu.');
    }
    
    public void setKitapAdi(string kitapAdi){
         this.kitapAdi= kitapAdi;

    }
    public string getKitapAdi(){
        return this.kitapAdi;
    }

    public void setYazar(string yazar){
        this.yazar= yazar;

   }
   public string getYazar(){
    return this.Yazar;
 }

  public void setFiyat(decimal fiyat){
    this.fiyat= fiyat;

 }
 public decimal getFiyat(){
    return this.fiyat;
 }

 public void details(){
    system.debug('Kitap adi: '+ this.kitapAdi );
    system.debug('Yazar: '+ this.yazar );
    system.debug('Kitap fiyati: '+this.fiyat );
    system.debug('Toplam kitap sayisi: '+kitapSayisi);
  
 }
 public static void toplamKitapSayisi() {
    System.debug('Toplam Kitap sayisi = ' + kitapSayisi);
}



}