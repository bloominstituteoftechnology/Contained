//
//  GameViewController.swift
//  Contained
//
//  Created by John McCants on 6/3/20.
//  Copyright © 2020 John McCants. All rights reserved.
//

import UIKit
import SpriteKit
import AVFoundation
import ImageIO

class GameViewController: UIViewController {

    @IBOutlet weak var skview: SKView!
    
    @IBOutlet weak var bananaImage: UIImageView!
    @IBOutlet weak var playImage: UIImageView!
    @IBOutlet weak var pauseImage: UIImageView!
    
    @IBOutlet weak var discoGif: UIImageView!
    var audioPlayer : AVAudioPlayer?
    
    var skscene: CustomScene? = nil
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
          
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pauseImage.isHidden = true
        playImage.isHidden = false
        bananaImage.isHidden = false
        
       audioPlayer = setupAudioPlayerWithFile(file: "PeanutButter!", type: "mp3")
        
    }
    
    func setupAudioPlayerWithFile(file:NSString, type:NSString) -> AVAudioPlayer  {
         let path = Bundle.main.path(forResource: file as String, ofType: type as String)
         let url = NSURL.fileURL(withPath: path!)

         do {
            try audioPlayer = AVAudioPlayer(contentsOf: url)
         } catch {
             print("NO AUDIO PLAYER")
         }

         return audioPlayer!
     }
    
    
    @IBAction func buttonTapped(_ sender: Any) {
        if Settings.shared.firstPress == false {
            skscene = CustomScene(size: view.bounds.size)
            skscene?.backgroundColor = UIColor.white.withAlphaComponent(0.5)
            skview.presentScene(skscene)
            Settings.shared.firstPress = true
            bananaImage.isHidden = true
            let discoBallGif = UIImage.gifImageWithName("disco")
            discoGif.image = discoBallGif
        }
        if let unpausedScene = skscene, let unwrappedAudioPlayer = audioPlayer {
        if pauseImage.isHidden == true {
            pauseImage.isHidden = false
            playImage.isHidden = true
            unpausedScene.isPaused = false
            unwrappedAudioPlayer.play()
            
        } else if pauseImage.isHidden == false {
            pauseImage.isHidden = true
            playImage.isHidden = false
            unpausedScene.isPaused = true
            unwrappedAudioPlayer.pause()
            discoGif.stopAnimating()
            
            
        }
    }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
