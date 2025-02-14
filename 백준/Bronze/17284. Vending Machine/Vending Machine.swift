import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
var money = 5000

for i in input {
    switch i {
    case 1:
        money -= 500
    case 2:
        money -= 800
    case 3:
        money -= 1000
    default:
        continue
    }
}

print(money)