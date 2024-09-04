func solution(_ s:String) -> String {
    var s = s.split(separator: " ").map{ Int(String($0))! }
    var max: Int = s.max()!
    var min: Int = s.min()!

    return "\(min) \(max)"
}