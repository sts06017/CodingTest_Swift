import Foundation

let s1 = readLine()!
var s2 = readLine()!.split(separator: " ").map{Int($0)!}.sorted()
let s3 = readLine()!
var s4 = readLine()!.split(separator: " ").map{Int($0)!}

func binarySearch(_ array: [Int], target: Int) -> Bool {
    var min = 0
    var max = array.count - 1
    
    while min <= max {
        var mid = (min + max)/2
        
        if array[mid] > target {
            max = mid - 1
        } else if array[mid] < target {
            min = mid + 1
        } else {
            return true
        }
    }

    return false
}



for int in s4 {
    if binarySearch(s2, target: int) {
        print(1)
    } else {
        print(0)
    }
}
