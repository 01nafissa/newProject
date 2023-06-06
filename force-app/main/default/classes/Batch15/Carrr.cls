public class Carrr {
    private string carNumber;
    public string name;
    public integer mfYear;
    public string color;
    decimal price;

    public void details(){
        system.debug('Car name is ' +name);
        system.debug('Car number is ' +carNumber);
        system.debug('Manufacturing year is ' + mfYear);
        system.debug('color of car is ' +color);
        system.debug('price  is ' +price);
        printCarAge();
    }

    // constructor is same as calss name
    //constructor does not return anything
     public Carrr(){
        system.debug('new car is created, constructor called automatically');
        mfYear=2023;
     }
     public void printCarAge(){
        integer currentYear = date.today().year();
        system.debug('car age is ' + (currentYear - mfYear));
     }

     public carrr(string nm){
        //nm is a parameter
        name = nm;
        mfYear = 2023;
     }
     public carrr(string nm, string num, string col, integer yr, decimal prc){
        name= nm;
        carNumber= num;
        mfYear = yr;
        color = col;
        price = prc;
        // automatically do some operation, without addinng to apex
        details();
     }
}