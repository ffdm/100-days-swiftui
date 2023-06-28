import UIKit

var greeting = "Hello, playground"
//-------- Loops -----------
for char in greeting {
    print(char)
}
// While loop for rolling dice and printing out roll until
// they roll a 20
var roll = 0
while roll != 20 {
    roll = Int.random(in: 1...20)
    print(roll)
}
print("You win!")
//-------- Checkpoint 3 ---------
//-------- Fizz Buzz    ---------
for i in 1...100 {
    if i % 3 == 0 && i % 5 == 0 {
        print("FizzBuzz")
    } else if i % 3 == 0 {
        print("Fizz")
    } else if i % 5 == 0 {
        print("Buzz")
    } else {
        print(i)
    }
}
//Using isMultiple
for i in 1...100 {
    if i.isMultiple(of: 3) &&
        i.isMultiple(of: 5){
        print("FizzBuzz")
    } else if i.isMultiple(of: 3){
        print("Fizz")
    } else if i.isMultiple(of: 5){
        print("Buzz")
    } else {
        print(i)
    }
}
