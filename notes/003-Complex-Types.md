# Day 3
## Arrays
Can only hold a singular data type
```
var nums = [1,2,3,4,5]
```
.append(): assume the array is var, it's mutable.
    so we can .append items to it. 
### Empty array:
```
var nums = Array<Int>()
nums.append(1)
nums.append(2)
print(nums[0])
```
Can also create them as so
```
var nums = [Int]()
```
## Array functions
- .count: # elements
- .remove(at: ): remove item at specific index
- .removeAll(): clears array
- .contains(): returns bool for if arg is in array
- .sorted(): returns sorted array, doesn't chang OG
- .sort(): sorts array
- .reversed(): returns "reversed" array
- .reverse(): reverses array
Many functions that work for arrays, also work for strings!
## Disctionaries
```
let employee2 = [
"name": "Jim",
"job": "Actor"
]
```
Read data using the keys.
Expression implicitly... ? Optional(...)?
- Since we don't know if the key is even in the dictionary,
    we might not actually get back data. This data is called
    an optional. 
For the case of reading data from our dictionary, we can 
just provide a default value:
```
print(employee2["name", default: "Unknown"])
```
## Data types
We can use different data types for the keys and the values,
we just need the dictionary to be consistent such that each
key is the same data type and each value is the same data
type.
EX:
```
let olympics = [
2012: "London",
2016: "Rio",
2021: "Tokyo"
]
print(olympics[2012, default: "Unknown"])
```
-----
You can also create an empty dictionary:
```
var heights = [String: Int]()
heights["Yao Ming"] = 229
```
Dicts have count, and removeAll().
------
## Sets
```
let people = Set(["Bill", Jeff"])
```
Notice that it makes an array first, then puts it into a set.
### Adding items to an empty set
```
var people = Set<String>()
people.insert("Jeff")
people.insert("Bill")
```
Uses `insert` instead of `append` because sets have no
order.
`.contains()` on a set is super fast. `.sorted()` returns 
a sorted list of set's items, ```.count``` returns num of items
---
## Enum class
EX:
```
enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}
var day = Weekday.monday
day = Weekday.tuesday
```
Shorter way to write:
```
enum Weekday { case monday, tuesday, wednesday}
```
Once you've already defined an enum variable, you can omit
the "Weekday" in this scenario, the class name since vars
can't change type. So you could write:
```
var day = Weekday.monday
day = .tuesday
```
When you print an enum var, you print the string of its name!
