func solution(_ s:String) -> String {
    var arr = s.components(separatedBy: " ")
    arr = arr.map {
        if $0 == "" {
            return $0
        }
        
        var lowerString = $0.lowercased()
        var firstChar = lowerString.removeFirst()
        
        if firstChar.isLetter {
            return String(firstChar.uppercased()) + lowerString
        } else {
            return String(firstChar) + lowerString
        }
    }
    
    return arr.joined(separator: " ")
}