import Foundation

let N = readLine()!
let nums = readLine()!.split(separator: " ").map{ Int(String($0))! }

var cnt: [Int] = Array(repeating: 0, count: nums.count)

for i in 0..<nums.count {
    var maxLevel = -9999999999.0
    for j in i+1..<nums.count {
        let level = Double(nums[j] - nums[i]) / Double(j - i)
        if maxLevel < level {
            maxLevel = level
            cnt[i] += 1
            cnt[j] += 1
        }
    }
}

var result: Int = 0
for i in cnt {
    if result < i {
        result = i
    }
}
print(result)