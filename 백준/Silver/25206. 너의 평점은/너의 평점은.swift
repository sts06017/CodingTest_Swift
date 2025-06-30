var sum = 0.0
var count = 0.0
for _ in 0..<20 {
    let input = readLine()!.split(separator: " ").map{ String($0) }
    
    var grade: Double = 0.0
    
    switch input[2] {
    case "A+":
        grade = 4.5
    case "A0":
        grade = 4.0
    case "B+":
        grade = 3.5
    case "B0":
        grade = 3.0
    case "C+":
        grade = 2.5
    case "C0":
        grade = 2.0
    case "D+":
        grade = 1.5
    case "D0":
        grade = 1.0
    case "F":
        grade = 0.0
    case "P":
        continue
    default:
        break
    }
    
    sum += grade * Double(input[1])!
    count += Double(input[1])!
}

print("\(sum/count)")