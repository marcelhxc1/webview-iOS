//
//  ViewController.swift
//  Arkhan
//
//  Created by Marcel Bueno on 13/11/2019.
//  Copyright © 2019 Arkhan Games all rights reserved
//

import UIKit

import WebKit


class ViewController: UIViewController ,WKUIDelegate{
   
    @IBOutlet weak var web: WKWebView!
    //var splashImageView: UIImageView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        web = WKWebView(frame: .zero, configuration: webConfiguration)
        web.uiDelegate = self
        view = web
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let myURL = URL(string: "https://hard.arkhangn.com/donate/eventos")
        let myRequest = URLRequest(url: myURL!)
        web.load(myRequest)
    }
}
