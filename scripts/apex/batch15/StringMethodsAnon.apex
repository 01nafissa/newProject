StringMethodsdemo sm1 = new StringMethodsdemo();
sm1.StringMethod2();
sm1.StringMethod1();


 // .indexOf
        string s22 = 'My name is Bond. James Bond';
        integer indexOfBond = s22.indexOf('Bond');
        system.debug(indexOfBond);//--> 11

        // .remove
        string str1 = 'Welcome to Softinnovas bootcamp. Ready to learn?';
      string str2 = str1.remove('to');
      system.debug(str2);

      string str1 = 'Welcome to Softinnovas bootcamp. Ready to learn?';
string str2 = str1.remove('to');
system.debug(str2);

string str3 = str1.removeEndIgnoreCase('EARN?');
system.debug(str3);



integer i = 55;
integer j = 84;

//5584
string iStr = string.valueOf(i);
string jStr = string.valueOf(j);
system.debug(iStr + jStr);