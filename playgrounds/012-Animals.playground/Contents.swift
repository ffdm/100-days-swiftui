import UIKit

//---------------- Checkpoint 7 ---------------
class Animal {
    let legs: Int
    init(legs: Int) {
        self.legs = legs
    }
}

class Dog : Animal {
    func speak () {
        print("Bark, I'm a dog")
    }
    init() {
        super.init(legs: 4)
    }
}

class Cat : Animal {
    var isTame: Bool
    func speak() {
        print("Meow, I'm a cat")
    }
    init(isTame: Bool){
        self.isTame = isTame
        super.init(legs: 4)
    }
}

class Corgi : Dog {
    override func speak() {
        print("Arf, I'm a corgi")
    }
}

class Poodle : Dog {
    override func speak() {
        print("Yip, I'm a poodle")
    }
}

class Persian : Cat {
    override func speak() {
        print("Purrr, I'm a persian")
    }
}

class Lion : Cat {
    override func speak() {
        print("Rawr, I'm a lion")
    }
}

let lion = Lion(isTame: false)
print("I'm a Lion with \(lion.legs) legs and I am tame? \(lion.isTame)")
let poodle = Poodle()
print("Poodle, legs: \(poodle.legs)")
poodle.speak()
