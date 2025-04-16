func solution(_ s:String) -> String {
    var result: [[String]] = []
    var arr = s.components(separatedBy: " ").map{ $0.lowercased() }
    for str in arr {
        var temp: [String] = []
        for s in str {
            if temp.isEmpty {
                temp.append(String(s).uppercased())
            } else {
                temp.append(String(s))
            }
        }
        result.append(temp)
    }
    
    return result.map{ $0.joined() }.joined(separator: " ")
}