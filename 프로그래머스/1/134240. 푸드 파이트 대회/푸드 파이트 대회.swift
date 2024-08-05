import Foundation

func solution(_ food:[Int]) -> String {
    var resultArr:[String] = ["0"]
    var foodDic = Dictionary(uniqueKeysWithValues: zip(food.indices, food))
    // key: food배열의 인덱스, value: 해당 인덱스에 위치한 값
    
    for i in foodDic.keys.sorted(by:>) {
        if foodDic[i]!/2 > 0 {
            var str = Array(repeating: String(i), count: foodDic[i]!/2).joined()
            resultArr.insert(str, at: 0)
            resultArr.append(str)
        }
    }
    
    return resultArr.joined()
}