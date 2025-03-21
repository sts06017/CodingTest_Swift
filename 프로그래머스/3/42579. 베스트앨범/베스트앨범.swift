import Foundation

struct Music {
    var genre: String
    var play: Int
    var index: Int
}

func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
    var result: [Int] = []
    var genreToMusics: [String:[Music]] = [:]
    var genrePlayCounts: [String:Int] = [:]
    
    for (index, genre) in genres.enumerated() {
        let play = plays[index]
        let music = Music(genre: genre, play: play, index: index)
        genreToMusics[genre, default: []].append(music)
        genrePlayCounts[genre, default: 0] += play
    }
    
    let sortedGenre = genrePlayCounts.sorted{ $0.value > $1.value }.map{ $0.key }
    
    for genre in sortedGenre {
        var musics = genreToMusics[genre]!
        musics.sort { 
            if $0.play == $1.play {
                return $0.index < $0.index
            }
            return $0.play > $1.play
        }
        
        for music in musics.prefix(2) {
            result.append(music.index)
        }
    }
    
    return result
}
