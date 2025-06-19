//MARK: - x보다 작은 수 (백준)
import Foundation
let input = readLine()!.split(separator: " ").map { String($0) }

let N = input[0]
let X = Int(input[1])!

var arr: [Int] = readLine()!.split(separator: " ").map{ Int(String($0))! }

var result = arr.filter{ $0 < X }.map{ String($0) }.joined(separator: " ")
print(result)
