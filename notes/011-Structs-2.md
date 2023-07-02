# Structs, part two
## Access Control
Sometimes you want to hide struct data from external access. You 
can create private variablse by writing `private var name: Type`.
Some access control options:
- private: can only be used inside struct
- fileprivate: can only be used inside file
- public: completely open for use
- private(set): can always be read but only written by struct's
    methods
## Static properties/methods
Static properties/methods are added to the struct itself, rather
than any individual instance of the struct.
```
struct School {
    static var studentCount = 0

    static func add(student: String) {
        print("\(student) joined the school.")
        studentCount += 1
    }
}
```
This proprty and method can be used like so:
```
School.add(student: "Taylor Swift")
print(School.studentCount)
```
Note how we never made an instance of the struct. Also note that
our method is changing a property of the struct but our method is
not declared as `mutating`. Since we are never creating a constant
instance of the struct, we don't need to specify that the method
is mutating.
## Mixing and matching static and non-static properties
We have two rules:
1. Static code can't refer to non-static code
2. To access static code from non-static code, you can use
    your type's name i.e. `School.studentCount` or use `Self` to
    refer to the current type.
- Note `Self` is different than `self`
`Self` refers to the current type of the struct and `self` refers
to the current value. An easy way to remember this is to notice
that `Self` has a capital letter, just like all other data types
in Swift.
If you want to create a type that has a static method/property
but no other types of data, you can create an enum instead of a
struct. This prevents you from making any instances of the type.
- Note: if a struct has a private property, Swift cannot generate
    the memberwise initializer for us
