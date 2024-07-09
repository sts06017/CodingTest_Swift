func solution(_ phone_number:String) -> String {
    var phone_number = phone_number
    var result = ""
    
    for i in phone_number {
        if result.count < phone_number.count - 4 {
            result += "*"
        } else {
            result += String(i)
        }
    }
    
    return result
}