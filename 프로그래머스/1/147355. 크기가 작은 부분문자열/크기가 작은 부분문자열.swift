import Foundation

func solution(_ t:String, _ p:String) -> Int {
    let stringCount = t.count - p.count
    var tString = Array(t)
    var strings: [String] = []

    for i in 0...stringCount {
        strings.append(String(tString[i...(i + p.count - 1)]))
    }
    
    return strings.filter{ Int($0)! <= Int(p)! }.count
}