//
//  VCBookVisit.swift
//  RSE_Assignment
//
//  Created by admin on 02/12/17.
//  Copyright © 2017 trycatch. All rights reserved.
//

import UIKit

class VCBookVisit: UIViewController ,UIWebViewDelegate{

    @IBOutlet weak var myWebView: UIButton!
    @IBOutlet weak var aiLoader: UIActivityIndicatorView!
    @IBOutlet weak var wvBookVisit: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        wvBookVisit.loadRequest(URLRequest(url: URL(string: "http://codigocreative.info/hostedclients/rse/preview.php")!))
        wvBookVisit.delegate = self 
        // Do any additional setup after loading the view.
    }
   public func webViewDidStartLoad(_ webView: UIWebView)
   {
    aiLoader.startAnimating()
    }
   public func webViewDidFinishLoad(_ webView: UIWebView)
   {
    aiLoader.stopAnimating()
    }
    
    
    @IBAction func btnBack(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
