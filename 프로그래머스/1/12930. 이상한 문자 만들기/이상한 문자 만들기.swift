func solution(_ s:String) -> String {
    var strings = s.components(separatedBy: " ")
    var result: [String] = []

    for string in strings {
        var index = 0
        var tmp = ""
        for i in string {
            if index%2 == 0 {
                tmp.append(i.uppercased())
            } else {
                tmp.append(i.lowercased())
            }
            index += 1
        }
        result.append(tmp)
    }
    
    return result.joined(separator: " ")
}