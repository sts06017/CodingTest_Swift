import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let (apple, bags) = (input[0], input[1])
let price = Int(readLine()!)!

let totalApple = apple * bags

// 12개씩 나눠서 필요한 상자 수 계산 (올림 처리)
let requiredBoxes = Int(ceil(Double(totalApple) / 12.0))

// 총 가격 계산
let totalPrice = requiredBoxes * price

print(totalPrice)
