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

    var soundPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as UICollectionViewCell
        
        return cell
    }
    @IBAction func playSound(_ sender: Any) {
       
    }
}

