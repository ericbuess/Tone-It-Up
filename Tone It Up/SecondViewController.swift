//
//  SecondViewController.swift
//  Tone It Up
//
//  Created by Eric Buess on 7/17/17.
//  Copyright © 2017 Eric Buess. All rights reserved.
//

import UIKit
import SafariServices

class SecondViewController: UIViewController, SFSafariViewControllerDelegate {

    let safariVC = SFSafariViewController(url: NSURL(string: "https://my.toneitup.com/pages/daily-workout-1")! as URL)
    var showWebsite = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        safariVC.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.showWebsite = true
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if self.showWebsite {
            self.present(safariVC, animated: false, completion: nil)
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func safariViewControllerDidFinish(_ controller: SFSafariViewController) {
        self.showWebsite = false
        controller.dismiss(animated: false, completion: nil)
        self.tabBarController?.selectedIndex = 1
    }

    func safariViewController(_ controller: SFSafariViewController, didCompleteInitialLoad didLoadSuccessfully: Bool) {
        print("search the page for <video> tags or src extensions ending in m3u8")
    }
}

