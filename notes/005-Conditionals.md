# Day 5
## Conditionals
```
if condition {
    // then
}
```
- Operators on booleans are same as C
- Empty string is ```""```
- String comparison is slow
- Count of string is not stored in data type
To check if a string is empty string, rather than
do string comparison, or use .count == 0, we can
use .isEmpty.
### Multiple conditions:
```
if cond1 {
    //stuff
} else if cond2 {
    //stuff
} else {
    //stuff
}
```
To combine bools with AND or OR gates, use 
```&&``` and ```||```.
## Switch statements
```
enum Weather {
    case sun, rain, wind, snow, unknown
}

var forecast = Weather.sun

switch forecast {
case .sun:
    print("Nice day")
case .rain:
    print("Pack unmbrella")
case .wind:
    print("Wear windbreaker")
case .snow:
    print("Winter jacket + umbrella")
case .unknown:
    print("Unknown")
}
```
Swift knows even here that our ```forecast``` is of enum type
Weather, so we can just say ```.sun``` etc.
- Note that switch "must be exhaustive"
So either, you have to include a default case or you have to
include all possbile cases. You also cannot include two of
the same case. Also, once a case is matched, Swift does not
check any other cases.
## Exectuting subcases on switch
You can use ```fallthrough```. This will tell Swift to excecute
the subsequent case code.
- Note, Swift also has the ternary operator
