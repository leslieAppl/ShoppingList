//
//  MusicLibrary.swift
//  ShoppingList
//
//  Created by leslie on 2/29/20.
//  Copyright © 2020 leslie. All rights reserved.
//

import Foundation
import UIKit

struct MusicLibrary {
    
    var songs: [Song] = []
    
    init() {
        
        generateSampleLibrary()
        
    }
}

extension MusicLibrary {
    
    mutating func generateSampleLibrary() {
        
        let song1 = Song(title: "Smells Like Teen Spirit", artist: "Niveana", album: "Nevermind", year: "1991", albumCover: #imageLiteral(resourceName: "Nevermind"))
        let song2 = Song(title: "Come Together", artist: "The Beatles", album: "Abbey Road", year: "1969", albumCover: #imageLiteral(resourceName: "Abbey Road"))
        let song3 = Song(title: "Billie Jean", artist: "Michael Jackson", album: "Triller", year: "1983", albumCover: #imageLiteral(resourceName: "Thriller"))
        let song4 = Song(title: "Bohemina Rhapsody", artist: "Queen", album: "A Night At the Opera", year: "1975", albumCover: #imageLiteral(resourceName: "A Night at the Opera"))
        let song5 = Song(title: "Sweet Child O'Mine", artist: "Guns N' Roses", album: "Appetite for Destruction", year: "1975", albumCover: #imageLiteral(resourceName: "Appetite for destruction"))
        let song6 = Song(title: "Hotel California", artist: "The Eagles", album: "Hotel California", year: "1988", albumCover: #imageLiteral(resourceName: "Hotel California"))
        let song7 = Song(title: "Born to Run", artist: "Bruce Springsteen", album: "Born to Run", year: "1975", albumCover: #imageLiteral(resourceName: "Born to Run"))
        let song8 = Song(title: "No Woman No Cry", artist: "Bob Marley", album: "Live!", year: "1975", albumCover: #imageLiteral(resourceName: "Live"))
        let song9 = Song(title: "Good Vibrations", artist: "Marky Mark and the Funky Bunch", album: "Music for the People", year: "1991", albumCover: #imageLiteral(resourceName: "Music for the People"))
        let song10 = Song(title: "Stairway to Heaven", artist: "Led Zeppelin", album: "Led Zeppelin IV", year: "1971", albumCover: #imageLiteral(resourceName: "Led zeppelin IV"))
        
        songs = [song1, song2, song3, song4, song5, song6, song7, song8, song9,song10]
        print(songs)
    }
}
