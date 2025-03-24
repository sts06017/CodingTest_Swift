let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var answer = ""
func dfs(nums: [Int]) {
    if nums.count == m {
        answer += nums.map{String($0)}.joined(separator: " ")
        answer += "\n"
        return
    }
    for i in 1...n {
        dfs(nums: nums + [i])
    }
}

dfs(nums: [])
print(answer)
