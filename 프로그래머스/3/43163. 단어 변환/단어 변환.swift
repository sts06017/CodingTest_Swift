import Foundation

func solution(_ begin:String, _ target:String, _ words:[String]) -> Int {
    if !words.contains(target) {
        return 0
    }
    
    var visited: Set<String> = []
    var queue: [(word: String, count: Int)] = [(begin, 0)]
    
    while !queue.isEmpty {
        let (currentWord, count) = queue.removeFirst()
        
        if currentWord == target {
            return count
        }
        
        for nextWord in words {
            if !visited.contains(nextWord) && isOneDifferent(word1: currentWord, word2: nextWord) {
                queue.append((nextWord, count + 1))
            }
        }
    }
    
    return queue.count
}

func isOneDifferent(word1: String, word2: String) -> Bool {
    let words1 = word1.map{$0}
    let words2 = word2.map{$0}
    var cnt = 0
    
    if word1 == word2 {
        return false
    }
    
    for i in 0..<words1.count {
        if words1[i] != words2[i] {
            cnt += 1
        }
        if cnt > 1 {
            return false
        }
    }
    
    return cnt == 1
}