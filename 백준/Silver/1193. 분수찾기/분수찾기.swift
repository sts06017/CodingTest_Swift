import Foundation

let N: Int = Int(readLine()!)!

var (a, b): (Int, Int) = (1, 1)
var temp: Int = 2
var count: Int = 0

while true {
    b = temp - a
    count += 1
    
    if count == N { break }
    
    a += 1
    
    if temp == a {
        a = 1
        temp += 1
    }
}

if temp % 2 == 1 {
    print("\(a)/\(b)")
} else {
    print("\(b)/\(a)")
}