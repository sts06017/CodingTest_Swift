import Foundation

func solution(_ t:String, _ p:String) -> Int {
    let pCount = p.count
    let stringCount = t.count - pCount
    var tString = Array(t)
    var strings: [String] = []

    for i in 0...stringCount {
        strings.append(String(tString[i...(i + pCount - 1)]))
    }
    
    return strings.filter{ Int($0)! <= Int(p)! }.count
}