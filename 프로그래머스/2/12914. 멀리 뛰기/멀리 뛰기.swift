func solution(_ n:Int) -> Int {
    var jump: [Int] = Array(repeating: 0, count: n+1)
    if n > 0 { jump[1] = 1 }
    if n > 1 { jump[2] = 2 }
    
    if n > 2 {
        for i in 3...n {
            jump[i] = (jump[i-1] + jump[i-2]) % 1234567
        }
    }
    return jump[n]
}