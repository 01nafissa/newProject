list<books> booklist1= new list<books>();
Books book1 = new Books();
book1.setKitapAdi('Sefiller');
book1.setYazar('Victor Hugo');
book1.setFiyat(29.00);
book1.details();
booklist1.add(book1);
system.debug('book1 => '+ book1);

Books book2 = new Books();
book2.setKitapAdi('The Great Gatsby');
book2.setYazar('F.Fitzgerald');
book2.setFiyat(34.00);
book2.details();
booklist1.add(book2);
system.debug('book2 => '+ book2);

Books.toplamKitapSayisi();
system.debug('book list=> '+ booklist1);

//system.debug(book1.getKitapAdi());
system.debug('-----kitabin bilgileri ayri ayri-----');
for (books book : booklist1){
    system.debug(book);
    system.debug('kitap adi: '+ book.getKitapAdi());
    system.debug('Yazar adi: '+ book.getYazar());
    system.debug('kitap fiyati: '+ book.getFiyat());
}