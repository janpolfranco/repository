//
//  GenreButtonScreen.swift
//  MusicPlayer
//
//  Created by John Paul M. Franco on 6/13/21.
//

import UIKit
import MediaPlayer
import MarqueeLabel

class GenreButtonScreen: UIViewController {
    
    var musicPlayer = MPMusicPlayerController.applicationMusicPlayer
    @IBOutlet weak var songName: MarqueeLabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func genreButtonTapped(_ sender: UIButton) {
        MPMediaLibrary.requestAuthorization { (status) in
            if status == .authorized {
                DispatchQueue.main.async {
                    self.playGenre(genre: sender.currentTitle!)
                    var songTitle:String = self.musicPlayer.nowPlayingItem?.title ?? " - No title available"
                    var songArtist:String = self.musicPlayer.nowPlayingItem?.albumArtist ?? " - No artist name available"
                    var nowPlayingString:String = " Now playing  "
                    var nowPlayingCompleteString = nowPlayingString + " - " + songTitle + " - " + songArtist
                    
                    self.songName.text = nowPlayingCompleteString
                    
                }
            }
        }
    }
    
    @IBAction func stopButtonTapped(_ sender: UIButton) {
        musicPlayer.stop()
    }
    
    @IBAction func nextButtonTapped(_ sender: UIButton) {
        musicPlayer.skipToNextItem()
    }
    
    func playGenre(genre: String) {
        
        musicPlayer.stop()
        
        let query = MPMediaQuery()
        let predicate = MPMediaPropertyPredicate(value: genre, forProperty: MPMediaItemPropertyGenre)
        
        query.addFilterPredicate(predicate)
        
        musicPlayer.setQueue(with: query)
        musicPlayer.shuffleMode = .songs
        musicPlayer.play()
    }
}
