import Foundation

var s1 = readLine()!.split(separator: " ").map{Int($0)!}
let haveLines = s1[0]
let needLines = s1[1]
var lines: [Int] = []

for i in 0..<haveLines {
    lines.append(Int(readLine()!)!)
}

var min = 1
var max = lines.max()!
var result = 0

while min <= max {
    var mid = (min + max) / 2
    
    var total = 0
    for line in lines {
        total += line / mid
    }
    
    if total >= needLines {
        result = mid
        min = mid + 1
    } else {
        max = mid - 1
    }
}

print(result)
