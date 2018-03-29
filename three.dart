import 'dart:math';

abstract class Shape {
  num get area;
}

//without factory

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
  var circle = new Circle(3);
  var square = new Square(3);
  var triangle = new Triangle(3,3);
  print(circle.area);
  print(square.area);
  print(triangle.area);
}
