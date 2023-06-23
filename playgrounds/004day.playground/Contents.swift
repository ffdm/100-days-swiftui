import UIKit

let num: Int
var d: Double = 4
num = 4
print(num)
print(d)
// ----------- Checkpoint 2 -----------
// Create array of strings, print # items in array and
// # unique items in the array
var strings = ["This", "is", "my", "sentence", "and",
"it", "is", "a", "great", "sentence", ".", "Now", "This", "is",
               "another", "sentence", "."]
print(strings.count)
var unique = Set(strings)
print(unique.count)
