//MARK: - 수열 (백준)
import Foundation

let input = readLine()!.split(separator: " ").map(\.description).compactMap(Int.init)
let N = input[0]
let K = input[1]
let arr = readLine()!.split(separator: " ").map(\.description).compactMap(Int.init)

var result: [Int] = []
var sum = arr[0..<K].reduce(0, +)
result.append(sum)

for i in 0..<(N-K) {
    sum += arr[i+K] - arr[i]
    result.append(sum)
}

print(result.max()!)