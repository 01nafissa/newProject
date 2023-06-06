Candidate.companyName='SoftInnovas';

Candidate can1= new Candidate();
can1.name='melek';
can1.gender = 'female';
can1.details();
system.debug('1.candidate count ->' +candidate.count);

Candidate can2= new Candidate();
can2.name='Ihsan';
can2.gender = 'male';
can2.details();
system.debug('2.candidate count ->' +candidate.count);

Candidate.companyName='Salesforce'; // we can reassign static value
Candidate can3= new Candidate();
can3.name='Jimmy';
can3.gender = 'male';
can3.details();
system.debug('final .candidate count ->' +candidate.count);