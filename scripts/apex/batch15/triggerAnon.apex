Opportunity opp = new Opportunity();
opp.name= 'trigger opp';
opp.StageName= 'prospecting';
opp.CloseDate = date.today().addDays(60);
insert opp;

opp.name+= ' update';
update opp;

list<account> accList = new list<account>();

account acc1 = new account();
acc1.name= 'Toyota';
accList.add(acc1);

account acc2 = new account();
acc2.name= 'Volvo';
accList.add(acc2);

insert accList; 