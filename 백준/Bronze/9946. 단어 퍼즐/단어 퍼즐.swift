import Foundation

var count = 1

while true {
    let input1 = readLine()!
    let input2 = readLine()!
    
    if input1 == "END" && input2 == "END" {
        break
    } else if input1 == input2 {
        print("Case \(count): same")
        count += 1
        continue
    }
    
    let input1Arr = input1.map{ String($0) }
    let input2Arr = input2.map{ String($0) }
    
    if input1Arr.sorted() == input2Arr.sorted() {
        print("Case \(count): same")
    } else {
        print("Case \(count): different")
    }
    
    count += 1
}