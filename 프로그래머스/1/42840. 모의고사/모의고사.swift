import Foundation

func solution(_ answers:[Int]) -> [Int] {
    let supo1 = [1,2,3,4,5] // 5
    let supo2 = [2,1,2,3,2,4,2,5]   // 8
    let supo3 = [3,3,1,1,2,2,4,4,5,5]   //10
    var rank: [Int] = [0,0,0]
    
    for i in 0..<answers.count {
        let answer = answers[i]
        
        let supo1Ans = supo1[i%5]
        
        let supo2Ans = supo2[i%8]
        
        let supo3Ans = supo3[i%10]
        
        if supo1Ans == answer {
            rank[0] += 1
        }
        if supo2Ans == answer {
            rank[1] += 1
        }
        if supo3Ans == answer {
            rank[2] += 1
        }
    }
    
    let maxScore = rank.max()!
    var result: [Int] = []
        
    for (index, score) in rank.enumerated() {
        if score == maxScore {
            result.append(index + 1)
        }
    }
    return result
}