# Day 9
In Swift, you can assign functions to variable, pass functions to
functions, and even return functions from functions.
Ex: Copying a function
```
func greetUser() {
    print("Hi there!")
}

greetUser()

var greetCopy = greetUser
greetCopy()
```
To skip creating a function and just make a variable with
functionality, we create a closure expression:
```
let greetUser = {
    print("Hi there!")
}
greetUser()
```
To send our closure arguments and return a value:
```
let greetUser = { (name: String) -> String in
    "Hi \(name)!"
}
```
Functions have types as well. If we were to write the type
annotation for the `greetUser()` function we just wrote, it
would be: `var greetCopy: (String) -> String = greetUser`. 
Meaning,
- It takes a string argument
- Returns a string
- Note: no parameters (previous version of greetUser) written as:
    `var greetCopy: () -> Void = 
- Note: parameter names not included in type
- Note: Void return type can also be written as `()`.
## How is this useful?
Example: custom storting function. Suppose we had an array of 
names of volleyball players on a team and we want to sort them 
alphabetically, but we want the team captain to always be first.
We can create a custom sorting predicate and pass that to our
sorting function:
```
let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let sortedTeam = team.sorted()
print(sortedTeam)

func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
}

let captainFirstTeam = team.sorted(by: captainFirstSorted)
print(captainFirstTeam)
```
This demonstrates the ability to pass functions into other
functions. Since a closure is basically a function without a name,
we can pass a closure into a function as well. Here is an example
of how we can accomplish the same thing as above using closures:
```
let captainFirstTeam = team.sorted(by:
    { (name1: String, name2: String) -> Bool in
        if name1 == "Suzanne" {
            return true
        } else if name2 == "Suzanne" {
            retunr false
        }

        return name 1 < name2
    }
)
```
