import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
var result = ""
for i in input {
    if i != 1 && i != 0 {
        result = "F"
        break
    } else {
        result = "S"
    }
}

print(result)