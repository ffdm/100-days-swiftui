# Day 8
## Functions part 2
To provide a default parameter value:
```
func name(param: Int = 10) {
    print(param)
}
name(param: 5) //prints 5
name()         //prints 10
```
To remove items from an array while keeping the capacity reserved,
we can use the parameter `keepingCapactiy` in the `removeAll`
function. EG:
```
characters.removeAll(keepingCapacity: true)
```
## Error handling in functions
### Throwing errors
We can build on the existing `Error` type adding enum cases for
our specific errors:
```
enum PasswordError: Error {
    case short, obvious
}
```
Then we can throw errors as so:
```
func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }

    if password == "12345" {
        throw PasswordError.obvious
    }

    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}
```
If a function can throw errors without self handing, you write
`throws` before the return type.
### Handling errors
If an error is thrown during the try, execution immediately jumps
to the catch block.
```
do {
    try someRiskyWork()
} catch {
    print("Handle errors here")
}
```
When you use `try`, you need to be in a `do` block and you need at
least one `catch` block. You can also catch specific errors:
```
do {
    try work()
} catch PasswordError.short {
    print("Use longer password")
} catch {
    print("There was an error")
}
```
Alternatively, you might use `try!`. This doesn't need do or catch
, but will crash the program if an error is thrown.
- Note, most Apple errors thrown have a message that can be
    presented to the user. I'm kinda confused on this part but
    it's commond to read `error.localizedDescription` to see
    exactly what happened.
