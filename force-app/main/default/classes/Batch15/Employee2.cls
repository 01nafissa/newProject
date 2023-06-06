public  class Employee2 {
    string name;
    decimal salary;
    public static decimal minSalary=5000;

    public Employee2(string name,decimal salary ){
        this.name=name;
        this.salary=salary;
    }
    //non-stattic
    public boolean isSalaryAboveMin(){
        //we are using static inside nonstatic
        boolean check=(salary>minSalary);
        return check;

    }
}
   