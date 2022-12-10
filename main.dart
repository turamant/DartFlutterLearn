import 'dart:io';

void main() {
  String name = "Tom";
  print(name);
  name = "Bob";
  print("name:$name");
  var car = 'Toyota';
  print("car:$car");
  String word = 'Hello world';
  print(word);
  int count = 0;
  print(count);
  if (count == 1){
    print(word);
  }else{
    print("object");
  }
  for (var i = 0; i < 10; i++){
    print("i:$i");
  }
  while (count < 10){
    print("while + $count");
    count++;
  }
  count = 0;
  do{
    print("do + $count");
    count++;
  }while(count >10);

  int summa = add(1, 3);
  print("summa:$summa");
  print(add(12, 13));
  hello("Привет функция(процедура)");
  List<int> lst1 = [11, 12, 13, 14, 15, 88];
  for (var i in lst1){
    print("li:$i");
  }
  lst1.addAll([99,99,99,99]);
  for( var i in lst1){
    print(i);
  }
  print(lst1.length);
  lst1.remove(12);
  print(lst1);
  lst1.removeAt(0);
  print(lst1);
  if (lst1.contains(88)){
    print("True");
  }
  var lst2 = <int>[1, ...lst1];
  print("New list: $lst2");
  const lst3 = <int>[1,2,3];
  print(lst3);
  var list4 = List.filled(5, 122);
  print(list4);
  var check = true;
  var lst5 = [
    'one',
    'two',
    'three',
    if(check)'wow already for'
  ];
  print(lst5);
  var intList = [1,7,9,0,3, 12, 24];
  var stringList = ['hello', 'ome', 'row'];
  var intList2 = [
    for (var i in intList) if (i % 2 == 0)i
      ];

  print(intList2);
}

int add(int x, int y){
  return x + y;
}

void hello(String msg){
  print(msg);
}