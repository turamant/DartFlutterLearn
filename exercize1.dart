void main(List<String> arguments){
  String str = 'Представим ситуацию, что у нас имеется вложенный цикл (цикл в цикле).';

  Map<String, int> ararat = {};
  ararat['one']= 1;
  ararat.addAll({'other':1});
  print(ararat);
  Map arr = <String, int>{};

  for (var i=0; i< str.length;i++){
    if (arr.containsKey(str[i])){
        arr[str[i]] += 1;
    }else{
      arr[str[i]] = 1;
    }
  }
  print(arr);
}