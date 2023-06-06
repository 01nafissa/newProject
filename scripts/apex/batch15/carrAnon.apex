Carrr newCar = new Carrr();
newCar.details();
system.debug('!!!!!!!!!');
Carrr bmw = new Carrr('BMW X3', 'PRA50050', 'blue', 2023, 50000 );





Carrr ford = new Carrr('Ford Mustang', 'asd2000', 'Grey', 2022, 50500);
string fordName=ford.name;
string fordcolor=ford.color;
system.debug('ford2 name amd color ' + fordName + ' ' + fordcolor);

system.debug('/////////');
ford.name = 'Ford Focus';
ford.color='Silver';
ford.details();