public  class ListDemo {
    public static void candidateList(){
        List<string>candList= new List<string>();
        candList.add('john');
        candList.add('Bill');
        candList.add('jane');
        candList.add('Chriss');
        candList.add('Marta');
        system.debug('list of candidates => ' + candList);
    }
    public static string candidateList(integer i){
        List<string>candList= new List<string>();
        candList.add('john');
        candList.add('Bill');
        candList.add('jane');
        candList.add('Chriss');
        candList.add('Marta');
        system.debug('list of candidates => ' + candList);

        string returnValue='';
        //size -> 4
        //max index -> 3
        integer size = candList.size ();
        if(i<size && i>=0){
            returnValue = candList.get(i);
        }else{
            returnValue = 'No such value exists ';
        }
        return returnValue;

    }
    public static void randomIntegerList(){
        List<integer> intList = new  List<integer>();
        intList.add(10);
        intList.add(5);
        intList.add(20);
        intList.add(15);
        intList.add(80);
        system.debug('Integer List ==> ' + intList);
        integer sizeOfList = intList.size();
        system.debug('size of list is ' +sizeOfList );

        integer inx3 = intList.get(3);
        //OR
        integer inxOf3 = intList[3];
        system.debug('The value of index 3 is =>' + inx3);
        system.debug('The value of index 3 is =>' + inxOf3);

    }
    public static void friendList(){
        list<string> friend = new list<string>();
        friend.add('safiya');
        friend.add('maida');
        friend.add('leyla');
        friends.add('relly');

        system.debug('before '+ friend);

        friend.sort();//alphabetically order list elements
        system.debug('after '+ friend);

    }
//check if this param. contains in list
    public static void friendList(string checkFriend){
        list<string> friend = new list<string>();
        friend.add('safiya');
        friend.add('maida');
        friend.add('leyla');
        friends.add('relly');
        
        system.debug('before '+ friend);



        boolean check1 = friends.contains(checkFriend);// contains method is case sensitive
        system.debug(checkFriend + 'contains in lis? ==> '+check);
    }
    
}