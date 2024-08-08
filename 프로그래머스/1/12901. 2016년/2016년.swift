func solution(_ a:Int, _ b:Int) -> String {
    let weeks = ["THU","FRI","SAT","SUN","MON","TUE","WED",]
    var months = [0,31,29,31,30,31,30,31,31,30,31,30,31]
    var sumOfDate = 0
    for i in 0..<a {
        sumOfDate += months[i]
    }
    sumOfDate += b
    
    return weeks[sumOfDate % 7]
}