# Learning_Dart

- All identifiers are public by default   
- Dart does not have keywords like public, private or protected    

 All Dart classes have a toString() method that you can override to provide more useful output.    

 The @override annotation tells the analyzer that you are intentionally overriding a member    

 Dart supports single or double quotes when specifying strings.     
 Use string interpolation ($variableName or ${expression}) to insert a string equivalent into a string literal.    

 Shorten one-line functions or methods using fat arrow (=>) notation.     


 To mark a Dart identifier as private, start its name with an underscore ( _ ). You can convert speed to read-only by changing its name and adding a getter.    

 By default, Dart provides implicit getters and setters for all public instance variables. You only need to define getters/setters when you want to enforce read-only or write-only variables, compute or verify a value, or update a value elsewhere.     


Optional parameters instead of function overloading  
optional parameters are enclosed inside curly braces {}    



  In object-oriented programming (OOP), a factory is an object for creating other objects – formally a factory is a function or method that returns objects of a varying prototype or class[1] from some method call, which is assumed to be "new".   


The Dart language doesn't include an interface keyword, because every class defines an interface.    

var is used to declare variable without specifying its type   

Uninitialized variables have an initial value of null. Even variables with numeric types are initially null, because numbers are objects.   


The Dart language has special support for the following types:

numbers
strings
booleans
lists (also known as arrays)
maps
runes (for expressing Unicode characters in a string)
symbols


Use an assert statement to disrupt normal execution if a boolean condition is false.
Dart programs generally have 2 modes: production (default) and checked. Assert statements will work only in checked mode.   
To run the programs in checked mode use :
```
dart -c file_name.Dart
```     





Dart’s treatment of booleans is designed to avoid the strange behaviors that can arise when many values can be treated as true. What this means for you is that, instead of using code like if (nonbooleanValue), you should instead explicitly check for values. For example:

TODO: checkout runes

=> expr is shorthand for {return expr;}   
=> is sometimes refreed to as fat arrow syntax
Only an expression can be used not a statement   

The main() function returns void and has an optional List<String> parameter for arguments.     


Type test operators
is, as, is!

Assign value to b if b is null; otherwise, b stays the same
b ??= value;    

Two types of conditional expressions
```
condition ? expr1 : expr2
```
If condition is true, evaluates expr1 (and returns its value); otherwise, evaluates and returns the value of expr2.
```
expr1 ?? expr2
```
If expr1 is non-null, returns its value; otherwise, evaluates and returns the value of expr2.     




Cascades (..) allow you to make a sequence of operations on the same object. Do make sure what is returned,  you can’t construct a cascade on void.

To partially handle an exception, while allowing it to propagate, use the rethrow keyword.      


### Classes and constructors
```
class Point {
  num x, y;

  Point(num x, num y) {
    // There's a better way to do this, stay tuned.
    this.x = x;
    this.y = y;
  }
}
```

Use this
```
class Point {
  num x, y;

  // Syntactic sugar for setting x and y
  // before the constructor body runs.
  Point(this.x, this.y);
}
```

Named constructors are allowed in dart
```
// Named constructor
  Point.origin() {
    x = 0;
    y = 0;
  }
  ```

  Constructors are not inherited by subclasses, we can implement the named constructor in the subclass if required    

  ### redirecting constructors
  ```
  class Point {
  num x, y;

  // The main constructor for this class.
  Point(this.x, this.y);

  // Delegates to the main constructor.
  Point.alongXAxis(num x) : this(x, 0);
}
```


Getters and setters are special methods that provide read and write access to an object’s properties. We can create additional properties by implementing getters and setters, using the get and set keywords.    


### Abstract methods
Make methods abstract by using ; instead of method body



noSuchMethod()

To detect or react whenever code attempts to use a non-existent method or instance variable, you can override noSuchMethod()
```
class A {
  // Unless you override noSuchMethod, using a
  // non-existent member results in a NoSuchMethodError.
  @override
  void noSuchMethod(Invocation invocation) {
    print('You tried to use a non-existent member: ' +
        '${invocation.memberName}');
  }
}
```


### Enumerated Types
Enumerated types, often called enumerations or enums, are a special kind of class used to represent a fixed number of constant values.

```
enum Color { red, green, blue }
assert(Color.red.index == 0);
assert(Color.green.index == 1);
assert(Color.blue.index == 2);

//get all values from enum
List<Color> colors = Color.values;

```
Each value in an enum has an index getter, which returns the zero-based position of the value in the enum declaration.

#To Be Continued
