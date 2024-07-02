import Foundation

func solution(_ id_pw:[String], _ db:[[String]]) -> String {
    let id = id_pw[0]
    let pw = id_pw[1]
    
    var db_ids:[String] = []
    var db_pws:[String] = []
    var db_dic:[String:String] = [:]
    
    for i in 0..<db.count {
        db_ids.append(db[i][0])
        db_pws.append(db[i][1])
        db_dic.updateValue(db[i][1], forKey: db[i][0])
    }
    
    if db_ids.contains(id) {
        
        if db_dic[id] == pw {
            return "login"
        } else {
            return "wrong pw"
        }
    } else {
        return "fail"
    }

}