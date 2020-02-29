//
//  DetailVC2.swift
//  ShoppingList
//
//  Created by leslie on 2/28/20.
//  Copyright © 2020 leslie. All rights reserved.
//

import UIKit

class DetailVC2: UIViewController {
    
    var musicLibrary = MusicLibrary()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.separatorColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
    }
    
}

extension DetailVC2: UITableViewDataSource, UITableViewDelegate {
    
    //MARK: - Table Data Source
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return musicLibrary.songs.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "songCell", for: indexPath) as? SongCell else { return UITableViewCell() }
        
        let currentSong = musicLibrary.songs[indexPath.row]
        
        cell.songView.song = currentSong
        
        return cell
        
    }
    
    
    //MARK: - Table Delegate
    
    
}
