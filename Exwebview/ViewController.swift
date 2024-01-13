//
//  ViewController.swift
//  Exwebview
//
//  Created by RLogixxTraining on 22/09/23.
//

import UIKit
import WebKit

class ViewController: UIViewController,WKNavigationDelegate {

    @IBOutlet weak var loader: UIActivityIndicatorView!
    @IBOutlet weak var wbview: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        wbview.navigationDelegate = self
        // Do any additional setup after loading the view.
        let link = URL(string:"https://gothru.co/PqtTjPR0l?index=scene_0&hlookat=0&vlookat=0&fov=120")!
        let request = URLRequest(url: link)
        wbview.load(request)
    }
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
           print("Start Request")
        loader.isHidden = false
       }
       
       func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
           print("Failed Request")
       }
       
       func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
           print("Finished Request")
           loader.isHidden = true
       }

}

