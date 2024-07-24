import Foundation

let s1 = readLine()!
var s2 = readLine()!.split(separator: " ").map{Int($0)!}.sorted()
let s3 = readLine()!
var s4 = readLine()!.split(separator: " ").map{Int($0)!}

var dic: [Int:Int] = [:]
var result: [Int] = []

for i in s2 {
    if dic.keys.contains(i) {
        dic[i]! += 1
    } else {
        dic[i] = 1
    }
}

for i in s4 {
    if dic[i] == nil {
        result.append(0)
    } else {
        result.append(dic[i]!)
    }
}

result.forEach{ print($0, terminator: " ") }