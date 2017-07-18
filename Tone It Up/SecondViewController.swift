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
    var dismissed = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        safariVC.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.dismissed = false
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if !dismissed {
            self.present(safariVC, animated: false, completion: {
                self.dismissed = true
                self.tabBarController?.selectedIndex = 1
            })
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func safariViewControllerDidFinish(_ controller: SFSafariViewController) {
        controller.dismiss(animated: false, completion: nil)
    }

}

