//
//  ViewController.swift
//  RSE_Assignment
//
//  Created by admin on 02/12/17.
//  Copyright © 2017 trycatch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btnCall(_ sender: Any) {
        if let url = URL(string: "tel://201 303 3711"), UIApplication.shared.canOpenURL(url) {
            if #available(iOS 10, *) {
                UIApplication.shared.open(url)
            } else {
                UIApplication.shared.openURL(url)
            }
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnServiceArea(_ sender: Any) {
        let vc2 = self.storyboard?.instantiateViewController(withIdentifier: "VCServiceArea")
        self.present(vc2!, animated: true, completion: nil)
    }
    @IBAction func btnBookVisit(_ sender: Any) {
        let vc2 = self.storyboard?.instantiateViewController(withIdentifier: "VCBookVisit")
        self.present(vc2!, animated: true, completion: nil)
    }

}

