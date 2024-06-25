import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }

let sol = 3 * input[1] / input[0] * input[2]

print(sol)