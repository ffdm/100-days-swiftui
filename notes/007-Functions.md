# Day 7
## Functions
```
func name(param: Type) {
    //stuff
}
```
You must always pass in function arguments in the same order they
are defined, even though you specify the parameters.
## Specify return type
`func name() -> Type {}`
To specify value, `return value`.
- Note, if the function only has *one* line of code, Swift knows 
it will return the correct value on that line. So therefore you 
don't need to write `return`. Ex:
```
func areLettersIdentical(string1: String, string2: String) -> Bool {
    string1.sorted() == string2.sorted()
}
```
## Returning multiple values
Returning tuples is usually a good option
```
func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}

let user = getUser()
print("Name: \(user.firstName) \(user.lastName)")
```
When returning a tuple, and you have already specified the names
of each of the tuple values in the function def, you don't need 
them in the return statement:
```
func name() -> (x: Int, y: Int){
    (1, 2)
}
```
If the tuple does not have specified names for its values, you 
can access them with its indices .0 and .1 
You can also pull apart a tuple like so:
`let (firstName, lastName) = getName()`
This creates two new constants, each with the corresponding value
from the tuple. If you only need one part of the tuple, you can
write `let (firstName, _) = getName()`.
## Customizing parameter labels
Swift actually looks at the parameter labels when deciding which
function to call. So this is actually perfectly valid Swift:
```
func hireEmployee(name: String) { }
func hireEmployee(title: String) { }
func hireEmployee(location: String) { }
```
You can actually specify the external parameter label (parameter
label used when calling the function) and the internal parameter
label (name actually used inside the function) like so:
```
func name(extLabel intLabel: Int) {
    print(intLabel)
}
name(extLabel: 30)
```
So if you want to call a function without specifying the label for
a given parameter, you can specify the external label to be `_`.
