import Foundation

let countries = Int(readLine()!)
let yesanOfCountry = readLine()!.split(separator: " ").map{ Int($0)! }.sorted()
let yeasn = Int(readLine()!)!

var minYesan = 1
var maxYesan = yesanOfCountry.max()!
var result = 0

while minYesan <= maxYesan {
    let mid = (minYesan + maxYesan) / 2
    var totalYesan = 0
    
    for i in yesanOfCountry {
        if mid >= i {
            totalYesan += i
        } else {
            totalYesan += mid
        }
    }
    
    if totalYesan > yeasn {
        maxYesan = mid - 1
    } else {
        result = mid
        minYesan = mid + 1
    }
}

print(result)
