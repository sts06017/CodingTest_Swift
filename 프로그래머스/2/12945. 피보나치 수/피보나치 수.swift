func solution(_ n: Int) -> Int {
    let mod = 1234567
    var a = 0
    var b = 1
    
    for _ in 2...n {
        let next = (a + b) % mod
        a = b
        b = next
    }
    
    return n == 0 ? a : b
}