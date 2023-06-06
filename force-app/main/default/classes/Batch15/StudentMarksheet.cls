public class StudentMarksheet {
    public string firstName;
    public string  lastName;
    public integer mathematics;
    public integer english;
    public integer chemistry;
    public static string schoolName;

    public StudentMarksheet(){
       schoolName = 'Salesforce Public School';
    }
    public void setFirstName(string name){
        this.firstName = name;
    }
    public string getFirstName(){
        return this.firstname;
    }
        public void setLastName(string last){
            this.lastName = last;
        }
        public string getLastname(){
            return this.lastName;
    }
     public void setMarks(integer mathematics,integer english, integer chemistry ){
        this.mathematics= mathematics;
        this.english=english;
        this.chemistry=chemistry;

    }
    public void showMarksheet(){
        system.debug('Student Full Name: ' +firstName +' '+lastName);
        system.debug('School name: '+schoolName);
        system.debug('Math : '+mathematics);
        system.debug('English: '+english);
        system.debug('Chemistry: '+chemistry);
        integer sum = mathematics+english+chemistry;
        if(sum>=120){
            system.debug('You are passed!');
        }else {
            system.debug('You need to study more');
        }
        system.debug('***************');
    }
}
