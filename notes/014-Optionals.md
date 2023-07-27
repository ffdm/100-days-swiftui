# Optionals
"this thing might have a value or might not"
Ex:
```
let opposites = [
    "Mario": "Wario",
    "Luigi": "Waluigi"
]

let peachOpposite = opposites["Peach"]
```
In this case, it wouldn't make sense to get a string back if there
is no value that corresponds to the key "Peach". So, 
`peachOpposite` ends up being an optional, a `String?` rather than
a `String`. If a `String?` is not a string, it is a value called
`nil`.
## Unwrapping optionals
We can't actuall use optionals without unwrapping them. Ex:
```
if let marioOpposite = opposites["Mario"] {
    print("Mario's opposite is \(marioOpposite)")
}
```
`if let` is very common in Swift. it does 3 things
1. Reads the optional value
2. If the optional is not `nil`, it gets *unwrapped*, so the
    constant `marioOpposite` takes this value. 
3. If we are able to unwrap the optional, the condition is true,
    so we can run the body of the `if`.
