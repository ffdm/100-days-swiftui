import UIKit
// little test with functions and conditionals
func emptyStrMessage(word: String){
    if word.isEmpty {
        print("Word is empty.")
    } else {
        print("Word \"\(word)\" is not empty")
    }
}
var word = ""
emptyStrMessage(word: word)
word += "Swift"
emptyStrMessage(word: word)
// ----------- Switch -------
enum Weather {
    case sun, rain, wind, snow, unknown
}

var forecast = Weather.sun
switch word {
case "test":
    print("Meow")
default:
    print("Default")
}
switch forecast {
case .sun:
    print("Nice day")
case .rain:
    print("Pack unmbrella")
case .wind:
    print("Wear windbreaker")
case .snow:
    print("Winter jacket + umbrella")
case .unknown:
    print("Unknown")
}
// Fallthrough
let day = 5
print("My true love gave to me…")

switch day {
case 5:
    print("5 golden rings")
    fallthrough
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 French hens")
    fallthrough
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print("A partridge in a pear tree")
}
