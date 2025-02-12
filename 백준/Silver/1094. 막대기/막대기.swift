let input = Int(readLine()!)!
var sum = 0
var sticks: [Int] = [64]

while sum != input {
    if sticks.reduce(0,+) == input {
        break
    }
    
    let tmp = sticks.removeLast()
    sticks.append(tmp/2)
    
    if sticks.reduce(0, +) < input {
        sticks.append(tmp/2)
    }
}

print(sticks.count)