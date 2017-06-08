//
//  ViewController.swift
//  Lau Board
//
//  Created by Ben Cullen on 6/8/17.
//  Copyright © 2017 Ben Cullen. All rights reserved.
//

import UIKit
import AVFoundation

class CollectionViewController: UICollectionViewController {

    var audioPlayer = AVAudioPlayer()
    var soundReferences = [String: String] ()
    var soundTitles = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        soundReferences = ["Alrigth":"allright",
         "Any Questions?":"anyquestions",
         "AYE":"aye",
         "Can Do Better":"candobetter",
         "It's Doable":"doable",
         "Cup of Java":"java",
         "Lunchtime":"lunch",
         "I'm Moses":"moses",
         "OHH":"ohh",
         "OH NO!":"ohno",
         "OK":"ok",
         "Put away Cell Phone":"putawayyourcellphone",
         "See Me":"seemepls",
         "VERY Doable":"verydoable"]
        
        soundTitles = ["Alrigth",
                       "Any Questions?",
                       "AYE",
                       "Can Do Better",
                       "It's Doable",
                       "Cup of Java",
                       "Lunchtime",
                       "I'm Moses",
                       "OHH",
                       "OH NO!",
                       "OK",
                       "Put away Cell Phone",
                       "See Me",
                       "VERY Doable"]

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return soundTitles.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as UICollectionViewCell
        
        let button: UIButton = cell.viewWithTag(1) as! UIButton
        
        button.setTitle(soundTitles[indexPath.row], for: UIControlState.normal)
        
        return cell
    }
    @IBAction func playSound(_ sender: UIButton) {
        do {
        //Create audio player with sound file
        audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: soundReferences[(sender.titleLabel?.text)!], ofType:"wav")!))
        
        audioPlayer.prepareToPlay()
        // Create an audio session
            do {
                var audioSession = AVAudioSession.sharedInstance()

                try audioSession.setCategory(AVAudioSessionCategoryPlayback)
            }catch{
               print (error)
            }
        
        // Play sound using audio player
        audioPlayer.play()
        }
        catch {
            print (error)
        }
   }

}
