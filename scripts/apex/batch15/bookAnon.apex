Book b1=new Book('1984', 'G.Orwell', 29.95);
b1.printDetails();

decimal prc1= b1.getPrice();
system.debug(prc1);

b1.setPrice(20);
b1.printDetails();

Book b2=new Book('Harry Potter', 'J.Rowling',25.50);
b2.printDetails();
