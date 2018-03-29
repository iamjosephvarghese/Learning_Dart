import 'dart:math';

abstract class Shape {
  num get area;
}


//factory as a top level function outside all classes

Shape shapeFactory(String type) {
  if (type == 'circle') return new Circle(3);
  if (type == 'square') return new Square(3);
  if (type == 'triangle') return new Triangle(3,3);
  throw 'Can\'t create $type.';
}


class Circle implements Shape {
  final num radius;
  Circle(this.radius);
  num get area => PI * pow(radius, 2);
}

class Square implements Shape {
  final num side;
  Square(this.side);
  num get area => pow(side, 2);
}

class Triangle implements Shape{
  final num base,height;
  Triangle(this.base,this.height);
  num get area => 0.5 * base * height;
}

main() {


  var circle = shapeFactory('circle');
  var square = shapeFactory('square');
  var triangle = shapeFactory('triangle');

  /*this will create an exception
  var unknown = shapeFactory('unknown');

  Or can use try catch block as

  try{
  statements
  }catch(err){
   print(err);
  }


  print(circle.area);
  print(square.area);
  print(triangle.area);
}
