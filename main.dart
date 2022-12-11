import 'dart:io';

import 'lib/application.dart';

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

  // Списки
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
  print(stringList);
  var intList2 = [
    for (var i in intList) if (i % 2 == 0)i
      ];

  print(intList2);
  // Копирование и глубокое копирование списков
  List<int> x_list1 = [1,5,9,10];
  var y_list = x_list1;
  y_list[0] = 777;

  var z_list = List.from(x_list1);
  z_list.add(333);
  print("$x_list1, '-', $y_list, '-', $z_list");

  var r_list = [...z_list];
  r_list[0] = 999;
  print("$r_list, $x_list1");

  var s_list = []..addAll(r_list);
  s_list.add(911);
  print(s_list);

  //Глубокое копирование
  List<List> xxx_list = [[1,2,3,4,5],[0]];
  var myZ = xxx_list;
  myZ.add([[1],[555]]);
  var myNewList1 = List.from(xxx_list);
  myNewList1[1].addAll([22,22,22]);
  print("$xxx_list, '-',$myNewList1");



  // Множества
  var mySet1 = {1,3,5,7,9,0};
  print(mySet1);
  Set<String> myset2 = {'w', 'd', 'fg'};
  print(myset2);

  List<int> nList1 = [1,1,1,3,3,5,6,77,77,8,98,99,0];
  var newList2 = Set<int>.from(nList1).toList();
  print(newList2);
  mySet1.addAll([1,3,5,100]);
  print(mySet1);

  var newSet = <int>{for (var i in nList1) if (i % 2 == 0) i};
  print(newSet);
  print("Объединение: ${mySet1.union(newSet)}");
  print("Пересечение: ${mySet1.intersection(newSet)}");
  print("Разница: ${mySet1.difference(newSet)}");


  // Копирование и глубокое копирование множеств
  var mySet11 = {1,2,3,8,9};
  var my2set = mySet11;
  var my3set = Set.from(mySet11);

  print("$mySet11");
  print("$my2set");
  print("$my3set");

  // Map (словари карты)
  Map<int, String> dict1 = {1:'Killer', 2:'Queen'};
  print("$dict1, '-', ${dict1.length}");
  print("${dict1.keys.toSet()}, ${dict1.values.toList()}");

  // Runes

  var muRuna = '\u041F';
  print(muRuna);
  Runes myR = Runes('Привет!');
  print(myR);

  var mySymbol = #myApi;
  print(mySymbol);
  Symbol myS = #ghjk;
  print(myS);

  // Dynamic vars
  dynamic myValue = 'qwerty';
  myValue = 1;
  myValue = 0.765432;
  myValue = #lkjhgfd;
  myValue = [1,2,'w'];
  print(myValue);

  List<dynamic> dynaLst1 = [1,3,'wer', 8, 9,'qw'];
  print(dynaLst1);
  dynaLst1.add("value");
  print(dynaLst1);

  Map<dynamic, dynamic> myDynaMapa = {1:'hELLO', 'WORLD': 'TRUE', 'KISS': 22};
  print(myDynaMapa);

  late final int? a;
  a = 12;
  print(a);
  print(myDynaMapa is Map<dynamic, dynamic>);


}
