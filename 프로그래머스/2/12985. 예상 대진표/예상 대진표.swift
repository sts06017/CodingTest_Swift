import Foundation

func solution(_ n:Int, _ a:Int, _ b:Int) -> Int {
    var answer = 0
    var root = Int(sqrt(Double(n)))
    var a = a
    var b = b
    
    for i in 1...20 {
        answer += 1
        
         if b > a && a%2 == 1 && b%2 == 0 {
            if b - a == 1 { // 만난경우
                return answer
            }
        }
        
        if a > b && a%2 == 0 && b%2 == 1 {
            if a - b == 1 {
                return answer
            }
        }
        
        if a % 2 == 1 { // 홀수
            a = (a+1)/2
        } else {    // 짝수
            a = a/2
        }
        
        if b % 2 == 1 {
            b = (b+1)/2
        } else {
            b = b/2
        }
    }

    return answer
}