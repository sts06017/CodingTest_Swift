import Foundation

func solution(_ nums:[Int]) -> Int {
    var result: Set<[Int]> = []
    
    for index1 in 0..<nums.count-2 {
        for index2 in index1+1..<nums.count-1 {
            for index3 in index2+1..<nums.count {
                let number = nums[index1] + nums[index2] + nums[index3]
                if insu(number) {
                    result.insert([nums[index1], nums[index2], nums[index3]])
                }
            }
        }
    }
    
    return result.count
}

func insu(_ n: Int) -> Bool{
    var count = 0
    var i = 1
    while i*i <= n {
        if n % i == 0{
            if i * i == n {
                count += 1
                
            } else {
                count += 2
            }
        }
        i += 1
    }
    
    if count == 2 {
        return true
    }
    
    return false
}