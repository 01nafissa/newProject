public  class conditionclass_assignment {
    public string Ifclassmethod(integer condi)  {
        string output_Month = 'Not a valid Month';

        if (condi==1){
            output_Month = 'January';
        }else if (condi==2){
            output_Month = 'February';

        }else {
            output_Month = 'Not a valid Month';
        }
        return output_Month;

    }
    public string casemethod(string Quarter ){
        string  output_Quarter = 'Enter a proper Month name';
        
        switch on Quarter {
            when 'January','febuary', 'march'{
                output_Quarter=  'Quarter 1';
            }

        
            when else {
                output_Quarter= 'Not a valid Quarter';
            }
        }

        return output_Quarter;
    }
}