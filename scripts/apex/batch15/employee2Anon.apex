 Employee2 e1 = new  Employee2('Sam', 6000);
 system.debug('salary above minimu? '+ e1.isSalaryAboveMin());

 //we can change static value
 Employee2.minSalary=6200;
 system.debug('salary above minimu? '+ e1.isSalaryAboveMin());