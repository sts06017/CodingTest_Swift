import Foundation

//MARK: - 피보나치 비스무리한 수열 (백준)
let input = Int(readLine()!)!
var arr = Array(repeating: -1, count: 117)
arr[1] = 1
arr[2] = 1
arr[3] = 1
var index = 4

while arr[input] == -1 {
    arr[index] = arr[index-1] + arr[index-3]
    index += 1
}

print(arr[input])