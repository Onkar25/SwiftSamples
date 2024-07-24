//
//  ViewController.swift
//  WebViewDemo
//
//  Created by Apple on 25/11/17.
//  Copyright © 2017 TryCatch. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UIWebViewDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myWebView.loadRequest(URLRequest(url: URL(string: "http://fernswa.myspecies.info/")!))
        myWebView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var myWebView: UIWebView!
    @IBOutlet weak var myActivityIndicator: UIActivityIndicatorView!
 
    public func webViewDidStartLoad(_ webView: UIWebView){
        myActivityIndicator.startAnimating()
        print("webViewDidStartLoad")
    }
    @IBAction func PushNewPage(_ sender: Any) {
        let myVC2 = self.storyboard?.instantiateViewController(withIdentifier: "MyViewController2") as! UIViewController
        self.present(myVC2, animated: true, completion: nil)
    }
    
    public func webViewDidFinishLoad(_ webView: UIWebView){
        myActivityIndicator.stopAnimating()
        print("webViewDidFinishLoad")
    }
    
    public func webView(_ webView: UIWebView, didFailLoadWithError error: Error){
        print("didFailLoadWithError")
    }
}

