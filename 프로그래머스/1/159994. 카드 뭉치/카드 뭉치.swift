import Foundation

func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
    var card1 = cards1
    var card2 = cards2
    
    if cards1 == goal || cards2 == goal {
        return "Yes"
    }
    
    for word in goal {
        if card1.first == word {
            card1.removeFirst()
        } else if card2.first == word {
            card2.removeFirst()
        } else {
            return "No"
        }
    }

    return "Yes"
}