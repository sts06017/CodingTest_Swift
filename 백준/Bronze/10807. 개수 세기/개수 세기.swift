//MARK: - 개수 세기 (백준)
import Foundation

let N = Int(readLine()!)!

var arr: [String] = readLine()!.split(separator: " ").map{ String($0) }

let V = readLine()!

var count = 0

for word in arr {
    if word == V {
        count += 1
    }
}

print(count)