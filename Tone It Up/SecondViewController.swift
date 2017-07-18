//
//  SecondViewController.swift
//  Tone It Up
//
//  Created by Eric Buess on 7/17/17.
//  Copyright © 2017 Eric Buess. All rights reserved.
//

import UIKit
import WebKit

//import SafariServices

class SecondViewController: UIViewController, WKNavigationDelegate { //SFSafariViewControllerDelegate
    
    var webView: WKWebView!
    
    //    let safariVC = SFSafariViewController(url: NSURL(string: "https://my.toneitup.com/pages/daily-workout-1")! as URL)
//    var dismissed = false
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        safariVC.delegate = self
        let url = URL(string: "https://my.toneitup.com/pages/daily-workout-1")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
//        if !dismissed {
//            self.present(safariVC, animated: false, completion: {
//                self.dismissed = true
//            })
//        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    func safariViewControllerDidFinish(_ controller: SFSafariViewController) {
//        controller.dismiss(animated: true, completion: nil)
//    }

}

