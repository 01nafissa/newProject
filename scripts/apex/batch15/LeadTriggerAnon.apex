list<lead> le= new list<lead>();
lead l1 = new lead();
l1.LastName='Klara';
l1.company='ZorroLLC';
l1.leadSource='Open-Not Contacted';
le.add(l1);

lead l2 = new lead();
l2.lastName= 'Kara'; 
l2.company='ZorroLLC';
l2.leadSource='Open-Not Contacted';
le.add(l2);

lead l3 = new lead();
l3.lastName= 'Kim'; 
l3.company='ZorroLLC';
l3.leadSource='Open-Not Contacted';
le.add(l3);

lead l4 = new lead();
l4.lastName= 'Kai'; 
l4.company='ZorroLLC';
l4.leadSource='Open-Not Contacted';
le.add(l4);

lead l5 = new lead();
l5.lastName= 'Kevin'; 
l5.company='ZorroLLC';
l5.leadSource='Open-Not Contacted';
le.add(l5);

insert le;

for (lead eachLead : le) {
    eachLead.description='Field Updated from Anonymous';
}
update le;