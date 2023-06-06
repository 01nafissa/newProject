public  class BankAccount {
   //data members OR Class variables
   
   public string accountNumber;
   decimal balance;
   string accountHolderName;
   string bankName;

   //rules of constructor
   public BankAccount(){
    system.debug('constructor called');
    balance=0; //assign some default value to data member
   }
//create parameterized constructor and assign class variables.
 public BankAccount(string accNum, decimal balance, string accHoldernm, string bankNm){
    //system.debug('accNmuber = ' + accNum);
    //system.debug('balance = ' + baln);
    //system.debug('holderName = ' + accHoldernm);
    //system.debug('bank = ' + bankNm);

    //assign class variables value
    accountNumber=accNum;
    this.balance=balance;
    accountHolderName=accHoldernm;
    bankName=bankNm;

 }

   public void printDetails(){
    system.debug('acc number '+ accountNumber);
    system.debug('acc balance '+ balance);
    system.debug('acc holder Name '+ accountHolderName);
    system.debug('acc bank Name'+ bankName);

   }
   public void setBalance(decimal bal){
    balance=bal;
   }
   public void deposit(decimal amount){
    balance+=amount;
    system.debug('print after deposit ');
    printBalance();
    
   }
   public void withdraw (decimal amount){
    balance-=amount;
    system.debug('print after deposit ');
     printBalance();
   }

   private void printBalance(){
    system.debug('balance is '+ balance);
   }
}