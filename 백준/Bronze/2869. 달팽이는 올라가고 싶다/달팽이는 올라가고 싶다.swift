import Foundation

let inputs: [Int] = readLine()!.split(separator: " ").map{ Int($0)! }
var (A, B, V) = (inputs[0], inputs[1], inputs[2])

print((V - B + (A - B - 1)) / (A - B))
