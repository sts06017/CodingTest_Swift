func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var answer: [String] = []
    var ans = ""
    var array1 = arr1.map{ Array(String($0, radix: 2)) }
    var array2 = arr2.map{ Array(String($0, radix: 2)) }
    
    for i in 0..<array1.count {
        while array1[i].count < n {
            array1[i].insert("0", at: 0)
        }
    }
    for i in 0..<array2.count {
        while array2[i].count < n {
            array2[i].insert("0", at: 0)
        }
    }
    
    for i in 0..<n {
        for j in 0..<n {
            if array1[i][j] == "0", array2[i][j] == "0" {
                ans += " "
            } else {
                ans += "#"
            }
        }
        answer.append(ans)
        ans = ""
    }

    return answer
}