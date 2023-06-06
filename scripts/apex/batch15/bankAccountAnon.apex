BankAccount memeber1 = new BankAccount ();//set balance to 0;
memeber1.accountNumber='123456789';
//bAcc1.balance = 1500;//does not work, because private
memeber1.setBalance(1500);
memeber1.deposit(500);
memeber1.deposit(500);

memeber1.withdraw(1500);
memeber1.withdraw(1500);
//bAcc1.printDetails()
memeber1.printDetails();
system.debug('------------');

BankAccount memeber2= new BankAccount('225588663', 52000.0,'Mariya', 'Chase');
memeber2.printDetails();