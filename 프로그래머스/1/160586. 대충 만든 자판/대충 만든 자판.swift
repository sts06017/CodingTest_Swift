import Foundation

func solution(_ keymap:[String], _ targets:[String]) -> [Int] {
    var alpha = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"].map{ $0.uppercased() }
    var dic: [String:Int] = Dictionary(uniqueKeysWithValues: zip(alpha, Array(repeating: 101, count: 26)))
    
    for key in keymap {
        for (index, spell) in key.enumerated() {
            if dic["\(spell)"]! > index + 1 {
                dic.updateValue(index + 1, forKey: String(spell))
            }
        }
    }

    var result: [Int] = []
    for target in targets {
        var sol: [Int] = target.map{
            if dic["\($0)"] == 101 {
                return -1
            }
            return dic["\($0)"]!
        }
        if sol.contains(-1) {
            result.append(-1)
        } else {
            result.append(sol.reduce(0, +))
        }
    }
    return result
}