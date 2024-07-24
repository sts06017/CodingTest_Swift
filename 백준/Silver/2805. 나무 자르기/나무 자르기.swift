import Foundation

var input1: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
let numOfTrees = input1[0]
let needTree = input1[1]
var trees: [Int] = readLine()!.split(separator: " ").map{Int($0)!}

var min = 1
var max = trees.max()!
var result = 0

while min <= max {
    let mid = (min + max) / 2
    
    var total = 0
    for tree in trees {
        if tree > mid {
            total += tree - mid
        }
    }
        
    if total >= needTree {
        result = mid
        min = mid + 1
    } else {
        max = mid - 1
    }
}

print(result)
