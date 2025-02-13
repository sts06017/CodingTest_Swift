import Foundation

let input = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map{ String($0) }
let input2 = readLine()!.split(separator: " ").map{ Int(String($0))! }
var (upCount, downCount) = (input2[0], input2[1])

var result: [String] = Array(repeating: "", count: input)

for (index, str) in arr.enumerated() {
    if str == "1" {
        result[index] = "U"
        upCount -= 1
    }
    if str == "2" {
        result[index] = "D"
        downCount -= 1
    }
}

for (index, str) in arr.enumerated() {
    if str == "3" {
        if upCount > 0 {
            result[index] = "U"
            upCount -= 1
        } else if downCount > 0 {
            result[index] = "D"
            downCount -= 1
        }
    }
}

if upCount != 0 || downCount != 0 {
    print("NO")
} else {
    print("YES")
    print(result.joined())
}
