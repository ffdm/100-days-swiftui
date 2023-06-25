import UIKit

func identical(s1: String, s2: String) -> Bool {
    s1.sorted() == s2.sorted()
}

let s1 = "Hello"
let s2 = "World"
let s3 = "Hello"

identical(s1: s1, s2: s2)
identical(s1: s1, s2: s3)

func test(t1 t2: Int) {
    print(t2)
}
test(t1: 3)
