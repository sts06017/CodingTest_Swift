import Foundation

func solution(_ a:String, _ b:String) -> String {
    let maxAB = max(a.count, b.count)
    
    var arrA:[String] = a.map{ String($0) }.reversed()
    var arrAA:[String] = Array(repeating: "0", count: maxAB)
    arrAA.replaceSubrange(0..<arrA.count, with: arrA)
    
    var arrB:[String] = b.map{ String($0) }.reversed()
    var arrBB:[String] = Array(repeating: "0", count: maxAB)
    arrBB.replaceSubrange(0..<arrB.count, with: arrB)
        
    var intArr:[Int] = [] // 결과 저장 배열
    var temp = 0
    
    for i in 0..<maxAB {
        let sum = Int(arrAA[i])! + Int(arrBB[i])! + temp
        let 나머지 = sum % 10 
        let 몫 = sum / 10
        intArr.append(나머지)
        temp = 몫
    }
    
    if temp != 0 {
        intArr.append(temp)
    }
    
    return intArr.map{ String($0) }.reversed().joined()
}