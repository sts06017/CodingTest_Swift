import Foundation

struct Music {
    var genre: String
    var play: Int
    var index: Int
}

func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
    var musics: [Music] = []
    var genreCount: [String:Int] = [:]
    var rankDic: [String:Int] = [:]
    var result: [Int] = []
    var rank = 1
    
    for (index, play) in plays.enumerated() {
        let music = Music(genre: genres[index], play: play, index: index)
        musics.append(music)
    }
    
    var sortedMusics = musics.sorted { aMusic, bMusic in
        aMusic.play > bMusic.play
    }
    
    for index in sortedMusics.indices {
        var music = sortedMusics[index]
        
        if genreCount[music.genre, default: 0] >= 2 { // 해당 장르의 곡이 이미 2개 수록되었을 경우
            break
        } else {
            result.append(music.index)
            genreCount[music.genre, default: 0] += 1
            if rankDic[music.genre, default: 0] == 0 {
                rankDic[music.genre] = rank
            }
            rank += 1
        }
    }
    
    let sortedResult = result.sorted { a, b in
        if genres[a] == genres[b] {
            return plays[a] > plays[b]
        } else {
            return rankDic[genres[a]]! < rankDic[genres[b]]!
        }
    }
    
    return sortedResult
}
