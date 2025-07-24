// MARK: - 진법 변환
import Foundation

let inputs = readLine()!.split(separator: " ")
let N = inputs[0]
let B = Int(inputs[1])!

func digitValue(of c: Character) -> Int {
    let scalr = c.unicodeScalars.first!.value
    
    if c.isNumber {
        return Int(scalr - 48)
    } else {
        return Int(scalr - 55)
    }
}

var answer: Int = 0
for ch in N {
    answer = answer * B + digitValue(of: ch)
}

print(answer)