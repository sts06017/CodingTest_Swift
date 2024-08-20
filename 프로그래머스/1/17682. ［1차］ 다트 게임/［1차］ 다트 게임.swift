func solution(_ dartResult:String) -> Int {
    var dartResult = dartResult
    var tempScore = 0
    var tempScore2 = 0
    var score: [Int] = []
    var dartArr = dartResult.map{ String($0) }
    
    for i in dartArr {
        switch i {
        case "S","D","T":
            // S -> 1제곱, D -> 2제곱, T -> 3제곱
            // print("sdt: \(i)")
            tempScore = score.removeLast()
            
            if i == "D" {
                tempScore *= tempScore
            } else if i == "T" {
                tempScore *= (tempScore * tempScore)
            }
            
            score.append(tempScore)
            tempScore = 0
            
        case "1"..."9":
            // print("1~9 : \(i)")
            tempScore += Int(i)!
            score.append(tempScore)
            
        case "0":
            if tempScore == 1 { // 직전의 문자가 1이고 직후 0이 오면 점수가 10인 경우
                // print("10")
                score.removeLast()
                tempScore = 10
            }
            
            // print("0")
            score.append(tempScore)
            
        case "*":
            // print("*")
            tempScore = (score.removeLast()) * 2
            if score.count > 0 {
                tempScore2 = (score.removeLast()) * 2
                score.append(tempScore2)
            }
            score.append(tempScore)
            
            (tempScore, tempScore2) = (0, 0)
        case "#":
            // print("#")
            tempScore = score.removeLast()
            tempScore *= -1
            score.append(tempScore)
            tempScore = 0
            
        default:
            print("default")
        }
    }
    return score.reduce(0, +)
}