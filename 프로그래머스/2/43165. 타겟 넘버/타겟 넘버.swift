import Foundation

func solution(_ numbers:[Int], _ target:Int) -> Int {
    var count = 0
    
    func dfs(index: Int, sum: Int) -> Int {
        var index = index+1
        
        if index == numbers.count {
            if sum == target {
                count += 1
            }
            return 0
        } else {
            dfs(index: index, sum: sum + numbers[index])
            dfs(index: index, sum: sum - numbers[index])
            return 0
        }
    }
    
    dfs(index: -1, sum: 0)
    
    return count
}