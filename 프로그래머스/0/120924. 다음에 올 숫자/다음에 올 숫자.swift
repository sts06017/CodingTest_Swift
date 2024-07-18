import Foundation

func solution(_ common:[Int]) -> Int {
    let hab = common[1] - common[0]
    var gob = 0
    if common[1] != 0, common[0] != 0 {
        gob = common[1] / common[0]
    }
    
    if common[1] + hab == common[2] {
        // 등차수열
        return common.last! + hab
    } else if common[1] * gob == common[2] {
        // 등비수열
        return common.last! * gob
    }
    return 0

}