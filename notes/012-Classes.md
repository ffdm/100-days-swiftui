# Classes
These are similar to structs, but different in the following ways:
- Classes can have inheritance
- Swift won't generate a memberwise constructor/initializer
- When you copy an instance of a class, both copies share the 
    same data (shallow copy)
- When the finaly copy of a class instance is destroyed, Swift can
    run a special function called a deinitializer
- Even if a class is constant, you can still change its var
    properties
EX:
```
class Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var newGame = Game()
newGame.score += 10
```
## Inheritance
```
class Employee {
    let hours: Int

    init(hours: Int) {
        self.hours = hours
    }
}

class Developer: Employee {
    func work() {
        print("I'm writing code for \(hours) hours.")
    }
}

class Manager: Employee {
    func work() {
        print("I'm going to meetings for \(hours) hours.")
    }
}
```
The `Developer` and `Employee` classes can use the `hours`
propety as if it were a normal property. Now say want to add a 
function to our Employee class:
```
func printSummary() {
    print("I work \(hours) hours a day.")
}
```
Without any extra code, instances of the Developer and Manager
classes can use this function.
### Overriding inherited methods
Say we want to change a method that we inheret. We can simply
write `override` in front of the function definition.
## Class Initializers
If a child class has its own properties and intializer, it must
always call the parent's initalizer after it has finished setting
up its own properties. You do this with the `super` keyword:
```
class Vehicle {
    let isElectric: Bool

    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConvertible: Bool

    init(isElectric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
}
```
## Copying classes
Classes are reference types, so all copies of classes are still
referencing the same date. To create a deep copy, you can just
write a function that returns an instance of ur struct:
```
class User {
    var username = "Anonymous"

    func copy() -> User {
        let user = User()
        user.username = username
        return user
    }
}
```
## Deinitializer
- Doesn't use `func` keyword
- Can't take paremeters or return data
- Called when final copy of a class instance is destroyed (they 
    are destroyed when they become out of scope)
- Can never be called directly
### Scope basics
- Vars created in function have scope of the function
- Vars created in `if` condition have scope of the condition
- Vars created in `for` loop, including the loop variable itself
    have the loop as scope
In each of these cases, the scope is inside of the braces.
## Variables stored inside classes
```
class User {
    var name = "Paul"
}

let user = User()
user.name = "Taylor"
print(user.name)
```
This is ok... why? Because our class is a reference data type. 
Therefore when we change its name property, we aren't actually 
changing the memory address stored as our class variable, but 
rather the data the memory pointed to by that address stores.
Now suppose our class instance is actually variable. So we can
change the memory addresses:
```
class User {
    var name = "Paul"
}

var user = User()
user.name = "Taylor"
user = User()
print(user.name)
```
Here we can write `user = User()`, which sets our class instance
to a completely new class instance. 
