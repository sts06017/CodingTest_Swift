import Foundation

var input1 = readLine()!
var input2: [Int] = readLine()!.split(separator: " ").map{Int($0)!}.sorted()
var input3 = Int(readLine()!)!
var input4: [Int] = readLine()!.split(separator: " ").map{Int($0)!}

var result:[Int] = []


for target in input4 {
    var min = 0
    var max = input2.count - 1
    var isContain = 0
    
    while min <= max {
        let mid = (min + max)/2
        
        if input2[mid] < target {
            min = mid + 1
        } else if input2[mid] > target {
            max = mid - 1
        } else {
            isContain = 1
            break
        }
    }
    
    result.append(isContain)
}

result.forEach{ print($0, terminator: " ") }