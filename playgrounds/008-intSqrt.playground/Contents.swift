import UIKit

func pnum(par: Int = 10) {
    print(par)
}
pnum(par: 5)
pnum()
//--------------- Checkpoint -----------------
enum sqrtError : Error {
    case oob, nr
}
func intSqrt(_ num: Int) throws -> Int {
    if num > 10_000 || num < 1 {
        throw sqrtError.oob
    }
    var root = -1
    for i in 1...100 {
        if i*i == num {
            return i
        }
    }
    throw sqrtError.nr
}
var n = 49
do {
    try print("\(n) has the square root \(intSqrt(n))")
} catch sqrtError.oob {
    print("\(n) is out of bounds")
} catch sqrtError.nr {
    print("\(n) has no integer root")
}

