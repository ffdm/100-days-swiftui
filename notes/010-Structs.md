# Structs, part one
Example struct:
```
struct Album {
    let title: String
    let artist: String
    let year: Int

    func printSummary() {
        print("\(title) (\(year)) by \(artist)")
    }
}
```
Convention is to start struct name with captial letter.
Example of using our struct:
```
let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
let wings = Album(title: "Wings", artist: "BTS", year: 2016)

print(red.title)
print(wings.artist)

red.printSummary()
wings.printSummary()
```
By default, struct functions are not allowed to mutate the data
stored in the struct. If you were to create an instance of a
struct using let, it wouldn't make sense to be able to call a
function that changes its data. In order to make a function like
this, we must specify it with the `mutating` keyword:
```
mutating func funcName(im: Type) {
```
Swift will stop us from using mutating functions on constant
instances of our struct.
Struct Notation:
- Properties: Vars and constants belonging to structs
- Methods: functions belonging to structs
For initializing, Swift secretly creates a `.init` function that
does the initialization. The follow two variables are the same:
```
var archer1 = Employee(name: "Sterling Archer",
    vacationRemaining: 14)
var archer2 = Employee.init(name: "Sterling Archer", 
    vacationRemaining: 14)
```
When we "typecast" as in the following piece of code:
```
let a = 1
let b = 2.0
let c = Double(a) + b
```
we are actually just making an instance of the Double struct and
initializing it with an integer value.
## Default values
We can insert default values if we assign them to our properties.
For example, if our struct has the following properties:
```
let name: String
var vacationRemaining = 14
```
Then the following are both valid:
```
let kane = Employee(name: "Lana Kane")
let poovey = Employee(name: "Pam Poovey", vacationRemaining: 35)
```
Where the `vacationRemaining` property of the `kane` instace has
the value `14`.
## Dynamic Properties
- Stored property: property directly stored in struct
- Computed propery: computes value of property every time its
    accessed
Example of computed property:
```
struct Employee {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0

    var vacationRemaining: Int {
        vacationAllocated - vacationTaken
    }
}
```
This is read like a normal property:
```
var archer = Employee(name: "Sterling Archer", vacationAllocated: 14)
archer.vacationTaken += 4
print(archer.vacationRemaining)
archer.vacationTaken += 4
print(archer.vacationRemaining)
```
To write to this property we can make a getter and setter:
```
var vacationRemaining: Int {
    get {
        vacationAllocated - vacationTaken
    }

    set {
        vacationAllocated = vacationTaken + newValue
    }
}
```
- Note: the `newValue` is automatically provided by Swift and 
    represents the value on the right side of the equal sign.
- Note: You can create constant structs that have computed 
    properties, but the computed properties themselves must not
    be set as constant.
## Property Observers
These are pieces of code that run when properties change. We have
two kinds: `didSet` which runs after a property was changed and 
`willSet` which runs before a property is changed. Say we have a
game and want to print out score updates every time the score is
changed. Rather than remember to do this after every time we set
our score, we can write:
```
struct Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var game = Game()
game.score += 10
game.score -= 3
game.score += 1
```
and Swift will do that for us. Swift also provide us with the
constant `oldValue` inside `didSet` if we need it. Here is another
code sample that demostrates the functionality of `didSet` and
`willSet`:
```
struct App {
    var contacts = [String]() {
        willSet {
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)")
        }

        didSet {
            print("There are now \(contacts.count) contacts.")
            print("Old value was \(oldValue)")
        }
    }
}

var app = App()
app.contacts.append("Adrian E")
app.contacts.append("Allen W")
app.contacts.append("Ish S")
```
In general, avoid putting lots of code into property observers.
This could easily cause performance problems.
## Custom Initializers
There is one rule to creating your own initializers: all
properties must be assigned a value. Swift creates its own
memberwise initializer automatically with functionality like this:
```
struct Player {
    let name: String
    let number: Int
}

let player = Player(name: "Megan R", number: 15)
```
We can write our own version of this initializer like so:
```
struct Player {
    let name: String
    let number: Int

    init(name: String, number: Int) {
        self.name = name
        self.number = number
    }
}
```
And we can basically do whatever we want inside our custom init
function as long as we give every property a value! Note: if you
want to call other methods from your struct inside of your 
initializer, you must give all of the properties values first.
## Extension for init
When you create any custom intializer, Swift's default initializer
goes away, *unless* you move your custom init to an `extension` 
like this:
```
struct Employee {
    var name: String
    var yearsActive = 0
}

extension Employee {
    init() {
        self.name = "Anonymous"
        print("Creating an anonymous employee…")
    }
}

// creating a named employee now works
let roslin = Employee(name: "Laura Roslin")

// as does creating an anonymous employee
let anon = Employee()
```
