func solution(_ s:String, _ n:Int) -> String {
    var result = ""
    for char in s {
        switch char {
        case "a"..."z":
            let start = Int(UnicodeScalar("a").value)
            let uni = Int(UnicodeScalar(String(char))!.value)
            result += String(UnicodeScalar((uni + n - start) % 26 + start)!)
        case "A"..."Z":
            let start = Int(UnicodeScalar("A").value)
            let uni = Int(UnicodeScalar(String(char))!.value)
            result += String(UnicodeScalar((uni + n - start) % 26 + start)!)
        default:
            result += String(char)
        }
    }

    return result
}