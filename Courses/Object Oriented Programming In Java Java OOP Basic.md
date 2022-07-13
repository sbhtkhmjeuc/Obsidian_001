# Object Oriented Programming In Java | Java OOP Basic Concepts | Java Tutorial

Last modified: March 17, 2022 11:33 AM
Priority: Important
Progress: Done
Subject: Java, OOP, Programming
URL: https://www.youtube.com/watch?v=6T_HgnjoYwM&t=829s

## Classes in Object Oriented Programming In Java

Entity → Class. For Example : `public class Student {...`

Actions → Functions. For Example : `public void Study () {...`

Attributes → Properties. For Example : `String Name`

To Modify the Priorities in a object and keep them safe, you need to use `Getter` and `Setter` functions. 

Constructor - a function that the main calls every time that the it wants to create a new object. 

<aside>
💡 Every tine that you are not creating a constructor, the program creates a Default constructor that don’t get anything, For Example : `public Student () {...`, that here is a default constructor because it’s doesn’t get and parameters. But once you created any new constructor (that gets parameters), **You can’t use the default constructor unless you written it as a constructor in the program.**

</aside>

## Access modifiers in Java

![Untitled](Object%20Oriented%20Programming%20In%20Java%20Java%20OOP%20Basic%204da399924d8b4adb97995bc008e91a79/Untitled.png)

## Inheritance

Parent Class → Child Class. in the parent class will have all the similar properties that the of the child class, For Example, a parent class will be **Vehicle** and the child class will be a **Car** because a car is a Vehicle.   

To use the constructors from the Parent Class, in the child class, you need you figure out what the constructor gets as a parameters, and instead of the constructor name you use the name `super` . For example:  `super (name)` that is a calling of a parent constructor in a child class.

## Encapsulation

**Strict access to the properties from the world.** 

Making the properties of the class as private that all of the other classes and the other users won’t be able to directly access it. 

But if you want to set / get the values of the object, you’ll have to go through the Getter and the Setter.  

## Abstraction

**Show Only the necessary details to the object user.** 

We are only care about calling the method not about the implementation of it. 

You can use `abstract` in **Function & Classes.**

Abstract Classes cannot be instantiated, but they can be subclassed .

When using a `abstract` in a function, you only set the function **Without any implementation**. Only the Child classes of the `abstract` class will have an implementation to it (Each Implementation to it’s own class, in the Child Class). **You can have both Regular & Abstract Functions in an Abstract Class.**

When you use an abstract class, you have to have at least one abstract function.

Example for an abstract function : `abstract void run () { ...`

Child abstract class have to implement all of the abstract function, or to be an abstract class itself.

Because you can’t have constructor in an abstract class, when you are building a new object you have to use the constructor  of the Child Classes. For Example : `GraphicObject circle = new Circle();`

### Loop-Hole

When you are creating a new object that is a parent class that is constructing with a Default constructor of the child class, java will try to find a constructor in the parent class and will run it, Although it shouldn't do it. 

## Interface

some kind of an agreement between, all the classes that uses it.  

In Interface you can only declare methods, not impalement them, you can also declare public static variables. 

to use interface with another class you need to write in the title of the class : `Implements NAME_OF_INTERFACE`

sometimes, when you’re overriding the methods of the interface, you need to write `@override` before you implement any function.