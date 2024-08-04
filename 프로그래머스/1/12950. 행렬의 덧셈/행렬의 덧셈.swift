func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var answer: [[Int]] = []
    var ans: [Int] = []
    
    for i in 0..<arr1.count {
        for j in 0..<arr1[0].count {
            ans.append(arr1[i][j] + arr2[i][j])
        }
        answer.append(ans)
        ans = []
    }
    
    return answer
}