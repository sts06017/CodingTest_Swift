import Foundation

func solution(_ babbling:[String]) -> Int {
    let words = ["aya", "ye", "woo", "ma"]
    var babbling = babbling
    var count = 0
    var temp: Character = " "
    var canSpeak: Bool = true
    
    for i in 0..<4 {
        babbling = babbling.map{ $0.replacingOccurrences(of: words[i], with: "\(i)") }
    }
    
    babbling = babbling.filter{ Int($0) != nil }
    
    for word in babbling {
        canSpeak = true
        for char in word {
            if char == temp {
                canSpeak = false
            }
            
            temp = char
        }
        if canSpeak {
            count += 1
        }
        temp = " "
    }
    return count
}