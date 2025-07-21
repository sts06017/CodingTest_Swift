import Foundation

let N: Double = Double(readLine()!)!
var result: Int = 3
var temp: Double = 7
var len: Double = 12

var count = 0
if N == 1 {
    print("1")
    
} else if (2...7)~=N {
    print("2")
    
} else {
    // temp부터 temp + len 범위안에 N이 포함될때 stop
    while !((temp+1...temp+len)~=N) {
        result += 1
        temp += len
        len += 6.0
    }
    
    print("\(result)")
}
