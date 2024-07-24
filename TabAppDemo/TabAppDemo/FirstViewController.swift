//
//  FirstViewController.swift
//  TabAppDemo
//
//  Created by APPLE on 24/12/17.
//  Copyright © 2017 APPLE. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController ,UIWebViewDelegate{
    
    @IBOutlet weak var SiteLoadAI: UIActivityIndicatorView!
    @IBOutlet weak var SiteWV: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        SiteLoadAI.hidesWhenStopped = true
        SiteWV.loadRequest(URLRequest(url: NSURL(string: "https://www.google.co.in/")! as URL))
        // Do any additional setup after loading the view, typically from a nib.
    }
    public func webViewDidStartLoad(_ webView: UIWebView)
    {
        SiteLoadAI.startAnimating()
        
    }
   
    public func webViewDidFinishLoad(_ webView: UIWebView)
    {
        SiteLoadAI.stopAnimating()
    }
    
    public func webView(_ webView: UIWebView, didFailLoadWithError error: Error){
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

