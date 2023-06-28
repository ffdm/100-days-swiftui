# Day 1

### Constants:

```
let name = "Bill"
```
### Variables:
```
var name = "Bill"
```
### Basic Output
```
print("meow")
```
Swift naming convention standard is camelCase

### String attributes
.count: number of chars in string
```
print(actor.count)
```
### String functions
.uppercased(): returns uppercase version of string
.hasPrefix(): takes string arg, returns bool of 
    whether or not the string has a given prefix
.hasSuffix(): same as hasPrefix but suffix.
### Integer underscores
You can put underscores in integers, often used to 
represent a "," in a normal number.
### int functions:
counter /= 2
.isMultiple(of:) takes integer argument
### Type safety
Cannot add (mix) ints and doubles.
ie. 
```
let d = 0.1
var n = 1
var x = d + 2 //(works)
x = n + d //doesnt work
```
typecasting:
```
let c = n + Int(d)
let c = Double(n) + d
```
## Older APIs use CGFloat. This is essentially the same 
as a double and swift lets us use Doubles whenever CGFloat
is expected.
