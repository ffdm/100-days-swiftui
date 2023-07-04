import UIKit

func getRandomNumber() -> some Equatable {
    Int.random(in: 1...6)
}

func getRandomBool() -> Bool {
    Bool.random()
}

var quote = "   The truth is rarely pure and never simple   "
let trimmed = quote.trimmingCharacters(in: .whitespacesAndNewlines)
extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}
print(quote.trimmed())


extension Int {
    func squared() -> Int {
        self * self
    }
}

let wholeNumber = 5
print(wholeNumber.squared())

struct User: Comparable {
    let name: String
}

func <(lhs: User, rhs: User) -> Bool {
    lhs.name < rhs.name
}
print(User(name: "Test") < User(name: "2Test"))
print(User(name: "Test") > User(name: "2Test"))
print(User(name: "Test") <= User(name: "2Test"))
print(User(name: "Test") == User(name: "2Test"))

protocol SuperHeroMovie {
    func writeScript() -> String
}
extension SuperHeroMovie {
    func makeScript() -> String {
        return """
        Lots of special effects,
        some half-baked jokes,
        and a hint of another
        sequel at the end.
        """
    }
}
// ------------------------ Checkpoint 8 ----------------
protocol Building {
    var rooms: Int { get set }
    var cost: Int { get set }
    var agentName: String { get set }
    func summary()
}

struct House : Building {
    var rooms: Int
    var cost: Int
    var agentName: String
    func summary() {
        print("This is a house with \(rooms) rooms, costs $\(cost), and is being sold by \(agentName)")
    }
}

struct Office : Building {
    var rooms: Int
    var cost: Int
    var agentName: String
    func summary() {
        print("This is an office with \(rooms) rooms, costs $\(cost), and is being sold by \(agentName)")
    }
}
