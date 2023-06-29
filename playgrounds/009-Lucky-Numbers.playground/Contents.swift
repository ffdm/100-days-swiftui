import UIKit

// -------------------- Checkpoint 5 -----------------------
let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]
// using sorted(), filter(), map()
// Filter out any numbers that are even
// Sort the array in ascending order
// Map them to strings in the format “7 is a lucky number”
// Print the resulting array, one item per line
var final = luckyNumbers.sorted()
    .filter { !$0.isMultiple(of: 2)}
    .map{"\($0) is a lucky number"}

for lucky in final {
    print(lucky)
}
