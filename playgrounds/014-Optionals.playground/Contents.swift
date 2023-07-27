import UIKit

let dict = [
    "One":"1",
    "Two":"2",
    "Three":"3"
]
if let d = dict["Four"] {
    print(d)
} else {
    print("Not in dictionary")
}

func checkNil (_ n: Int?) -> (){
    if let n = number {
        print(n)
    } else {
        print("nil")
    }
}

var number: Int? = nil
checkNil(number)
number = 20
checkNil(number)
