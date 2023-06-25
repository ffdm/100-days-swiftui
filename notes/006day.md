# Day 6
## For loops
```
let platforms = ["iOS", "macOS", "Linux"]

for os in platforms {
    print("This is an os: \(os)")
}
```
## Range for loop
For loop from 1 -> 12 with iterator ```i``` (1 thru 12):
```
for i in 1...12 {
    // do something
}
```
To exclude final # in range (1 up to 12):
```
for i in 1..<12 {
    // stuff
}
```
In the case where you don't actually want to use the iterator for
anything, call the iterator ```_```.
- Note, you cannot loop over tuples like you can arrays.
## While loops
```
while cond {
    //stuff
}
```
## Random # in range
Number in range 1 through 1000
```
let id = Int.random(in: 1...1000)
```
Works for double:
```
let amount = Double.random(in: 0...1)
```
## Skipping loop iterations
- continue
Skipps rest of current iteration
- break
Exits loop

