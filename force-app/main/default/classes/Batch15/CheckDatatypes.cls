public class CheckDatatypes {
  public void checkboolean(){
    boolean checkBoolean= true;
    system.debug(checkBoolean);
  }

    public void  methodInteger(){
        integer varfirst= 1 ;
        integer varsecond = 2 ;
        system.debug(varfirst);
        system.debug(varsecond);
        
    }
    public void stringMethod(){
        string varname = 'Name ';
        string var2name = ' your name';
        system.debug(varname + ' '+ var2name);
    }

    public void  methodId(){
        ID checkId= '0013x00002RZ2c0AAD';
        system.debug(checkId);

    }
    public void methodDouble(){
Double varfirst= 1.23;
Double varsecond= 209.764;
system.debug(varfirst);
system.debug(varsecond);
    }
}