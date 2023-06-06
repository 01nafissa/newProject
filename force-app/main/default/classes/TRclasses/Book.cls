public class Book {
    // data members
    string title;
    string author;
    decimal price;
    public Book(string title, string author, decimal price){
        this.title= title;
        this.author= author;
        this.price=price;

    }
    public void printDetails(){
        system.debug('title of the book is '+ this.title);
        system.debug('author of the book is '+ this.author);
        system.debug('price of the book is '+ this.price);
    }

    public string  getTitle(){
        return this.title;

    }
    public string  getAuthor(){
        return this.author;
        
    }
    public decimal getPrice(){
        return this.price;
        
    }
    public void setTitle(string title){
        this.title= title;

    }
    public void setAuthor(string author){
        this.author= author;

    }
    public void setPrice(decimal price){
        this.price=price;
    }

}