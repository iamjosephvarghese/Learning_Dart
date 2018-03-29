class Bicycle {
  int cadence;
  int _speed;
  int gear;

  //constructor for Bicycle
  Bicycle(this.cadence, this._speed, this.gear);

  //Overriding toString
  @override
  String toString() => 'Bicycle $speed mph';

  int get speed => _speed;

  void applyBrake(int decrement) {
    _speed -= decrement;
  }

  void speedUp(int increment) {
    _speed += increment;
  }
}

void main() {
  var bike = new Bicycle(2, 3, 4);
  print(bike);
  bike.applyBrake(2);
  print(bike);
  print(bike.gear);
  print(bike.speed);
  bike.gear = 6;
  print(bike.gear);

  //this line will generate error as no setter is specified
  //speed can only be changed as of now using the methods applyBrake() and speedUp()
  //bike.speed = 7;
}

class Bicycle {
  int cadence;
  int _speed;
  int gear;

  //constructor
  Bicycle(this.cadence, this._speed, this.gear);

  @override
  String toString() => 'Bicycle $speed mph';

  int get speed => _speed;

  void applyBrake(int decrement) {
    _speed -= decrement;
  }

  void speedUp(int increment) {
    _speed += increment;
  }
}

void main() {
  var bike = new Bicycle(2, 3, 4);
  print(bike);
  bike.applyBrake(2);
  print(bike);
  print(bike.gear);
  print(bike.speed);
  bike.gear = 6;
  print(bike.gear);

  //this line will generate error as no setter is specified
  //bike.speed = 7;
}
