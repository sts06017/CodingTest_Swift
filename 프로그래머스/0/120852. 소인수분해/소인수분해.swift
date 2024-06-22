import Foundation

func solution(_ n:Int) -> [Int] {
    var index = 2
    var num = n
    var nums = [Int]()
    
    while(num != 1) {
        if  num % index == 0 {
            num = num / index
            nums.append(index)
            index = 2
        } else {
            index += 1
        }
    }
    
    return Array(Set(nums)).sorted()
}