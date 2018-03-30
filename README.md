# Learning_Dart

All identifiers are public by default   
Dart does not have keywords like public, private or protected    

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
