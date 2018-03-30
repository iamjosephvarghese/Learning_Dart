//program to convert int, double to string and vice-versa

main(){
  var value1 = int.parse('100');
  assert(value1 == 100);

  var value2 = double.parse('2.33333');
  assert(value2 == 2.33333);


  String str1 = value1.toString();
  assert(str1 == '100');

  String str2 = value2.toStringAsFixed(2);
  assert(str2 == '2.33');

}
