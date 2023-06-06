public class DecimalMethodsDemo {
    public practice1() {
        decimal d1 = 5.55525699;
        // setScale will return us decimal
        decimal d1x = d1.setScale(2);
        //print ht e new decimal
        system.debug(d1x);

        decimal d2 = 88.45446489;
        system.debug(d2.setScale(3));

        string s = '88.77';
        decimal ds = decimal.valueOf(s);
        system.debug(s + 5); // it concates

        system.debug(ds +5); // it adds



    }
    public void practice2(){
        decimal myMoney = 555.515262

        decimal myMoney2= myMoney.setscale(2);
        system.degug('2decimals;' + myMoney2);

        string myMoney3 = myMoney2.toPlainString();
        system.debug('string' + myMoney3);

        decimal myMoney4 = decimal.valieOf(myMoney3);
        system.debug('value of' + myMoney4);
    }
}