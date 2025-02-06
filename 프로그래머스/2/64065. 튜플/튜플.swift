import Foundation

func solution(_ s:String) -> [Int] {
    var result = [] as [Int]
    var s = s.trimmingCharacters(in: CharacterSet(charactersIn: "{}"))
    var ss = s.components(separatedBy: "},{")
    var sss = ss.map{ $0.split(separator: ",").compactMap{Int($0)} }
    
    sss.sort { a, b in
        a.count < b.count
    }
    
    for i in sss {
        result.append(i.filter{ !result.contains($0) }.first!)
    }
    
    return result
}