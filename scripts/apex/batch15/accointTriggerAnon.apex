List<account> listAcc = new list<account>();
for (Integer i = 0; i <3; i++) {
    account ac = new account();
    ac.Name = 'test acc TRIGGER ' + i;
    //add account to list
    listAcc.add(ac);
}
insert listAcc;
