import Foundation

let input = readLine()!
var arr = Int(input)!

var sol1 = Int(Double(arr) * 0.78)
var sol2 = arr - Int(Double(arr) * 0.2 * 0.22)

print(sol1, sol2)
