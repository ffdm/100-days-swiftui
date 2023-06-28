import UIKit

var nums = [Int](repeating: 3, count: 3)
nums.append(1)
nums.append(2)
print(nums[1])
print(nums[nums.count-1])
print(nums.remove(at: 1))
print(nums)
nums.removeAll()
nums.contains(1)
nums.append(1)
nums.append(-1)
// doesn't actually sort nums, just returns the sorted version.
nums.sorted()
//
nums
// actually sorts:
nums.sort()
nums.append(3)
// similar as sorted, but returns something more complicated for performance
nums.reversed()[0]
//
nums
nums.reverse()
print(nums)
// --------------- Dictionaries ----------------
var jim = [
    "name": "jim",
    "age": "24",
    "job": "writer"
]
print(jim["name", default: "unknown"])
// Different data types
var olympicnames = [
    2012: "London",
    2016: "Rio",
    2021: "Toyko"
]
print(olympicnames[2012, default: "unkown"])
var olympicdates = [
    "London": 2012,
    "Rio": 2016,
    "Toyko": 2021
]
print(olympicdates["London", default: -1])
print(olympicdates["Meow", default: -1])
print(olympicdates.count)
olympicdates.removeValue(forKey: "London")
olympicdates.count
olympicdates["London", default:-1]
// ----------------- Sets ----------------------
let people=Set([
    "test",
    "meow"
])
print(people)
// ------ Enums ----
enum Weekday {
    case mon, tues, wed, thurs, fri, sat, sun
}
var day = Weekday.mon
print(day)
day = .tues
print(day)
// Wow that's cool. When you print an enum you print its name!!!
