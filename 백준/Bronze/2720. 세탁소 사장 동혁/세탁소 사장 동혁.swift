import Foundation

let T: Int = Int(readLine()!)!
let (Q, D, N, P) = (25, 10, 5, 1)
for _ in 0..<T {
    var input: Int = Int(readLine()!)!
    var result: [String] = []
    
    result.append(String(input / Q))
    input = input % Q
    
    result.append(String(input / D))
    input = input % D
    
    result.append(String(input / N))
    input = input % N
    
    result.append(String(input / P))
    
    print("\(result.joined(separator: " "))")
}