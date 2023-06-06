public class SetdemoAgain {
    public static void setOfList(){
        set<list<integer>> sl = new set<list<integer>> ();

        list<integer> l1= new list<integer>{1,2,3,5,10};
        list<integer> l2= new list<integer>{8,9,3,5,85};
        list<integer> l3= new list<integer>{1,2,3,5,10};
        list<integer> l4= new list<integer>{5,7,3,9,11};

        sl.add(l1);
        sl.add(l2);
        sl.add(l3);
        sl.add(l4);

        system.debug('final set is '+ sl);
        system.debug('size of the set is '+sl.size());
    }
}
  