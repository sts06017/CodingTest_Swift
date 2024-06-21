import Foundation

func solution(_ balls:Int, _ share:Int) -> Int {
    return nCr(balls, share)
}
func nCr(_ a:Int, _ b:Int) -> Int {
    if b - 1 == 0 {
        return a
    } else if a == b {
        return 1
    } else {
        return nCr(a-1, b) + nCr(a-1, b-1)
    }
}