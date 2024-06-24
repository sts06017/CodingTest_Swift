import Foundation

func solution(_ spell:[String], _ dic:[String]) -> Int {
    var spellTmp = spell
    var isCount = [Int]()
    var index = 0
    
    for i in dic {  // dic 각 요소를 순환
        i.filter({ s in
            if spellTmp.contains(String(s)) {
                spellTmp.removeAll(where: {$0 == String(s)})
                index += 1
                return true
            } else {
                return false
            }
        })
        spellTmp = spell
        isCount.append(index)
        index = 0
    }
    
    return isCount.contains(spell.count) ? 1 : 2
}