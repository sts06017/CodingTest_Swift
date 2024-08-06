func solution(_ strings:[String], _ n:Int) -> [String] {
    return strings.sorted(by: {
        if Array($0)[n] != Array($1)[n] {
            return Array($0)[n...].map{String($0)}.joined() < Array($1)[n...].map{String($0)}.joined()
        } else {
            return $0 < $1
        }
    })
}