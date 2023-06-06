public  class Emplyee {
    string name;
    decimal salary;
    integer age;

    // using constructor  we can set values.
    //or we can set methods as shown below

    //setVariablesName()--> set methods
    public void setName(string name){
        this.name = name;
    }
    public string getname(){
        return this.name;
    }
    public void setSalary(decimal salary){
        if(salary>=5000 && salary<=90000){
            this.salary = salary;

        }else{
            this.salary=0;
            system.debug('Salary not in valid Range.');
        }
        
    }
    public decimal getSalary(){
        return this.salary;
    }
}