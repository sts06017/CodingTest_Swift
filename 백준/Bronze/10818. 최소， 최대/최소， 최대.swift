import Foundation

let N = Int(readLine()!)!

var input = readLine()!.split(separator: " ").map{ Int(String($0))! }

var min = input[0]
var max = input[0]

for i in input {
    if i < min {
        min = i
    }
    
    if i > max {
        max = i
    }
}

print("\(min) \(max)")