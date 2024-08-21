import Foundation

func solution(_ s:String, _ skip:String, _ index:Int) -> String {
    var count = 0
    var result = ""
    let arr: [Character] = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
    
    for char in s {
        var temp = char
        count = 0
        while count < index {
            /// arr에 포함되어있는 char. arr에서 몇번째 인덱스인지 알아야함.
            /// skip에 없는 문자의 경우에 arr인덱스 + 1번째에 있는 원소로 temp를 변경. 이후 count+1
            /// 만약 skip에 있는 문자의 경우 count값을 증가하지 않고 다음 반복문 이동.
            var indx = arr.firstIndex(of: temp)!
            
            if indx == 25 {
                indx = 0
                temp = arr[indx]
            } else {
                temp = arr[indx + 1]
            }
            
            
            if !skip.contains(temp) {   // skip에 없는 문자일 경우
                count += 1
            }
        }
        result += String(temp)
    }
    
    return result
}