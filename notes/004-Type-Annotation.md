# Day 4
When doing `let var = 0`, etc. we are using type inference.
## Type annotation
- dictating data types of vars/lets
```
let surname: String = "Lasso"
var score: Int = 0
```
Say the score should be a double, but you are too
lazy to write the decimal, you can do 
```
var score: Double = 0
```
Examples with complex data types:
```
var albums = [String] = ["Red", "Fearless"]
var user = [String: String] = ["id": "@jimmy"]
var books: Set<String> = Set([
    "Ender's Game",
    "Harry Potter",
    "The Bible"
])
```
These all do the same thing:
```
var teams: [String]()
var cities: [String] = []
var clues: [String] = [String]()
```
## Use case for type annotation:
- Creating constant, but you don't know its value yet.
```
let username: String
// lots of code
username = "@name"
// more code
print(username)
```
<!---
Test
-->
