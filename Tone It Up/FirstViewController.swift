//
//  FirstViewController.swift
//  Tone It Up
//
//  Created by Eric Buess on 7/17/17.
//  Copyright © 2017 Eric Buess. All rights reserved.
//

import UIKit
import AVKit

class FirstViewController: AVPlayerViewController, AVPlayerViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        let url = URL(string: "http://www.ebookfrenzy.com/ios_book/movie/movie.mov")
        let url = URL(string: "https://content.jwplatform.com/manifests/dON6VlzZ.m3u8")
        
        if let movieURL = url {
            self.player = AVPlayer(url: movieURL)
        }
        
        
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.player?.play()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

