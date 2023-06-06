SetDemo.citySet();
SetDemo.randomIntegerSet();
set<boolean> bs = new set<boolean>();
bs.add(true);
bs.add(false);
bs.add(null);
bs.add(true);
bs.add(false);
bs.add(null);
system.debug(bs);

SetDemo.setFromList();
SetDemo.upperCaseSet();

set<string> colors = new set<string>{'purple ', 'pink ', 'white ', 'red ', 'white '};
set<string> colorsinCaps = SetDemo.upperCaseSet(colors);
system.debug(colorsinCaps);