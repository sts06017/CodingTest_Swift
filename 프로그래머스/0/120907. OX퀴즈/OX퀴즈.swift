import Foundation

func solution(_ quiz:[String]) -> [String] {
    let quizCount = quiz.count
    var quizNoSpaces: [[String.SubSequence]] = []
    var sum = 0
    var results = [String]()
    
    for i in 0..<quizCount {
        quizNoSpaces.append(quiz[i].replacingOccurrences(of: "- ", with: "-").replacingOccurrences(of: "+", with: "").replacingOccurrences(of: "--", with: "")
            .trimmingCharacters(in: .whitespacesAndNewlines)
            .split(separator: " "))
    }
    for i in 0..<quizCount {
        sum = Int(quizNoSpaces[i][0])! + Int(quizNoSpaces[i][1])!
        
        if Int(quizNoSpaces[i][3])! == sum {
            results.append("O")
        } else {
            results.append("X")
        }
        
    }
    
    return results
}