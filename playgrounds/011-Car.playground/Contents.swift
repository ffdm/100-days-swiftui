import UIKit

struct Car {
    let model: String
    let seatNum: Int
    private var curGear: Int
    mutating func changeUp(){
        if curGear < 10 {
            curGear += 1
            print("Gear changed to \(curGear)")
        }
        else {
            print("On highest gear: 10")
        }
    }
    mutating func changeDown(){
        if curGear > 1 {
            curGear -= 1
            print("Gear changed to \(curGear)")
        }
        else {
            print("On lowest gear: 1")
        }
    }
    init(model: String, seatNum: Int){
        self.model = model
        self.seatNum = seatNum
        curGear = 1
        print("Starting gear: 1")
    }
}

var mustang = Car(model: "Mustang", seatNum: 4)
mustang.changeUp()
mustang.changeUp()
mustang.changeDown()
mustang.changeDown()
mustang.changeDown()

