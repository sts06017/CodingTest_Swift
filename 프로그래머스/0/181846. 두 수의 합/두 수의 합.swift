import Foundation

func solution(_ a:String, _ b:String) -> String {
        let maxAB = max(a.count, b.count)   // 두 숫자중 긴 숫자의 길이 저장
        
        var arrA:[String] = a.map{ String($0) }.reversed()  // 1의자리부터 더하기위해 문자열을 배열로 변환하면서 거꾸로 저장
        var arrAA:[String] = Array(repeating: "0", count: maxAB)    // 두 숫자중 긴 숫자의 길이에 맞게 "0"으로 채워진 배열 생성
        arrAA.replaceSubrange(0..<arrA.count, with: arrA)           // 첫번째 자리부터 a 배열 저장
        
        var arrB:[String] = b.map{ String($0) }.reversed()
        var arrBB:[String] = Array(repeating: "0", count: maxAB)
        arrBB.replaceSubrange(0..<arrB.count, with: arrB)
            
        var intArr:[Int] = [] // 결과 저장 배열
        var temp = 0          // 덧셈 연산 이후에 몫을 저장하기위한 변수
        
        for i in 0..<maxAB {
            let sum = Int(arrAA[i])! + Int(arrBB[i])! + temp    // 1의 자리부터 각 배열의 원소 꺼내와서 더하고, 이전에 연산하고 올라온 몫을 가져와서 더함
            let 나머지 = sum % 10  // 더한 값에서 10으로 나누어서 그 자릿수에 들어갈 나머지 구함
            let 몫 = sum / 10    // 더한 값에서 다음 자릿수로 올려줘야할 몫을 구함
            intArr.append(나머지)  // 나머지 값을 결과배열에 추가
            temp = 몫        // 다음 자릿수 연산에서 몫을 더하기 위해 Temp배열에 저장
        }
        
        if temp != 0 {      // 마지막 최고자릿수에 0이 들어가는것을 방지하기위해 0이 아닐때만 결과배열 끝에 마지막 연산의 몫을 추가
            intArr.append(temp)
        }
        
        return intArr.map{ String($0) }.reversed().joined()     // 결과배열의 원소를 하나씩 문자열로 변환하여 문자열배열로 바꾸고, reverse로 원래 숫자로 뒤집은 다음, join으로 각 배열 문자열을 합쳐서 하나의 문자열로 바꿔서 결과반환.
}