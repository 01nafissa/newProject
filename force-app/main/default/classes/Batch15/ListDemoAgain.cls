public  class ListDemoAgain {
    public static void printAnimalsList(){
        list<string> animals = new list<string>();
        animals.add('dog');
        animals.add('cat');
        animals.add('horse');
        animals.add('monkey');
        animals.add('tiger');
        animals.add('lion');
        animals.add('lion');

        system.debug('All animals: ' + animals);
        integer numOfAnimals = animals.size();
        system.debug('number of animals: '+ numOfAnimals);
        system.debug('last element is => '+ animals.get(numOfAnimals-1));
        system.debug('the last element in Capital => '+ animals.get(numOfAnimals-1).toUpperCase());

        animals.remove(numOfAnimals-1);
        system.debug('after update => '+ animals.size());
        system.debug('updated list => '+ animals);

    }

    public static void printAnimalsList2(){
        list<string> animals = new list<string>();
        animals.add('dog');
        animals.add('cat');
        animals.add('horse');
        animals.add('monkey');
        animals.add('tiger');
        animals.add('lion');
        animals.add('lion');

        list<string> a2 = new list<string>{'kangaroo','bear', 'deer','bear','deer'};
        system.debug('2nd list is empty? ' + a2.isEmpty());

        a2.addAll(animals);
        system.debug('add the 1. list to second=>'+ a2);

        system.debug('index of the bear=> '+ a2.indexOf('bear'));
        system.debug('index of the bear=> '+ a2.indexOf('Bear'));// if string is not in the list the index will retun -1
        
        a2.sort();
        system.debug('sorted list=> '+ a2);

        integer bearIndex = a2.indexOf('bear');
        a2.remove(bearIndex);
        // 2. way
        // a2.remove(indexOf('bear'));

        a2.clear();//remove ALL
        system.debug('a2 list is empty?=> '+ a2.isEmpty());
    }
}
   