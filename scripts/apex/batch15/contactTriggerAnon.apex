// contact con = new contact();
// con.firstname='Name1';
// con.LastName='lastName1';
//insert con;

// con.firstname='Nameone';
// con.LastName='lastName1';
// update con;

// delete con;

// undelete con;

list<contact> c= new list<contact>();
contact con = new contact();
con.LastName='lastName1';
c.add(con);
contact con2 = new contact();
con2.lastName= 'new name'; 
c.add(con2);

insert c;