list<string> colorList = new list<string>{'blue', 'yellow','green','black', 'white'};
System.debug('List of colors ' + colorList);
Integer size = colorList.size();
System.debug('The size of this list is ' + size);
if (colorList.contains('red')){
   System.debug('The color list contains red.');
}else{
   System.debug('This color list does NOT contains red');
}
// veya
Boolean cl = colorList.contains('red');
System.debug(cl);

string last = colorList.get(size-1);
system.debug(last);
// veya
string last1 =colorList[size-1];
System.debug('The last element of the list ' + last1);

String lastUpperCase = last.toUpperCase(last);
System.debug(lastUpperCase);

list<string> colorCodesList = new List<String>{'#FF0000','#FF0001','#FF0002','#FF0003','#FF004'};
Boolean isEqual = colorCodesList.equals(colorList);
System.debug('Are the two lists equal? ' + isEqual);

List<string> mergedList = new List<string>();
mergedList.addAll(colorList);
mergedList.addAll(colorCodesList);

system.debug('This is our merged list ' + mergedList);










