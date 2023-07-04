# Protocols
Protocols let us define a series of properties and methods we want
to use. Ex:
```
protocol Vehicle {
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}
```
We could make a car struct that conforms to `Vehicle` like so:
```
struct Car: Vehicle {
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }

    func travel(distance: Int) {
        print("I'm driving \(distance)km.")
    }

    func openSunroof() {
        print("It's a nice day!")
    }
}
```
- All methods we specified in `Vehicle` must exist exactly in
    `Car`
- The `Car` struct provides the actual implementations of the 
    methods defined in our protocol
- We have another method `openSunroof` that is not defined in the
    protocol. This is because protocols describe on the minimum
    functionality that must be provided by conforming types.
So now, if we have a function that uses only methods/properties
that are defined in the `Vehicle` protocol, this function will
work on any object conforming to the `Vehicle` protocol. This
allows us to write one function, but methods the objects have that
conform to the protocol must exist and be defined as specified,
but they can be unique to each type of object.
## Adding properties to a protocol
We write `var`, property name, then whether it should be readable
and/or writeable. Ex:
```
protocol Vehicle {
    var name: String { get }
    var currentPassengers: Int { get set }
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}
```
Type annotations are required since we can't provide default 
values in a protocol. If you use `{ get set }`, then you can't
conform to the protocol using a constant property.
### Note: you can't create set-only properties
### Note:
You can conform to as many protocols as you need, just by listing them one by one separated with a comma. If you ever need to subclass something and conform to a protocol, you should put the parent class name first, then write your protocols afterwards.
# Opaque return types
Both `Int` and `Bool` conform to a common Swift protocol called 
`Equatable`, meaning they can be compared for equality (can use
`==`). You can return protocols from functions, and it is useful
to hide information. In our example though, we can't return two
`Equatable`s because, we wouldn't be able to compare them since
their types are hidden. Here is where opaque return types come in.
We can hide information in our code, but not from the Swift
compiler. To return our `Equatable`s as opaque return types, we
add the `some` keyword before the return type. Here is a useful
excerpt from the article describing this phenomenon:
> returning Vehicle means "any sort of Vehicle type but we don't 
know what", whereas returning some Vehicle means "a specific sort
of Vehicle type but we don't want to say which one.
# Extensions
Let us add functionality to any type.
### `trimmingCharacters(in:)`
Method allows us to remove certain kinds of characters from start
/end of string. You can use it to remove whitespace from a string
like so:
```
let trimmed = quote
    .trimmingCharacters(in: .whitespacesAndNewlines)
```
We can write an extension to Strings, to allow us to trim off
white space in less characters:
```
extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}
```
Basically, we add the code in the curly braces to the specified
type. Note: extensions get full access to the type instance's 
internal data. If we wanted to directly modify the content of the
string in our extension, we could add:
```
mutating func trim() {
    self = self.trimmed()
}
```
So now we can trim our `quote` variable like so: `quote.trim()`.
If you want to add properties to types using an extension, they
must be computer properties (since adding stored properties would
affect the actual size of the data types).
## Custom init, and auto init
Sometimes we want to use Swift's generated initializer for structs
but we also want some form of a custom intializer. If we do this
using an extension, Swift *won't* disable the automatic
initializer. Ex:
```
extension Book {
    init(title: String, pageCount: Int) {
        self.title = title
        self.pageCount = pageCount
        self.readingHours = pageCount / 50
    }
}
```
# Protocol extensions
You can give any struct conforming to a protocol extensions. It 
works just like adding extensions to a struct. You can use this
to add default implementations to the methods described in your
protocol. 
Example of its usefullness:
```
let numbers = [4, 8, 15, 16]
let allEven = numbers.allSatisfy { $0.isMultiple(of: 2) }
```
This works for both Sets and Dictionaries.
## More protocol extensions
Let's say we want to add a `squared()` function to Ints and
Doubles:
```
extension Int {
    func squared() -> Int {
        self * self
    }
}

let wholeNumber = 5
print(wholeNumber.squared())
```
We could find a protocol that both Int and Double conform to, 
`Numeric`, and write our extension on that protocol:
```
extension Numeric {
    func squared() -> Int {
        self * self
    }
}
```
But this doesn't work... since squared() might return a `Double`,
or another Numeric conforming type. So we can use the `Self`
keyword, which represents the type of `self`:
```
extension Numeric {
    func squared() -> Self {
        self * self
    }
}
```
### Equatable
We can make our custom types equatable by conforming them to
`Equatable` protocol. Swift will automatically allow us to use
`==` and `!=` by simply checking the equality of one instance's
properties with anothers.
### Comparable
This protocol is for types that can be compared with `<`. Swift
will not automatically implement this on our custom types. To do
so yourself, simply write a function called `<` that accept two 
instances of your struct and returns `true` if the first instance
is "less than" (should be sorted before) the second:
```
struct User: Equatable, Comparable {
    let name: String
}

func <(lhs: User, rhs: User) -> Bool {
    lhs.name < rhs.name
}
```
This allows us to compare two Users with `<` as so:
```
let user1 = User(name: "Taylor")
let user2 = User(name: "Adele")
print(user1 < user2)
```
The cool thing is that Swift uses protocol extensions to implement
the following for you (since User is Equatable and Comparable):
```
print(user1 <= user2)
print(user1 > user2)
print(user1 >= user2)
```
Even better, we don't even need to add `Equatable` to our struct
for this:
```
struct User: Comparable {
    let name: String
}
```
Behind the scenes, Swift uses protocol inheritance, where 
`Comparable` inherits from `Equatable`. 
