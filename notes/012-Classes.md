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
