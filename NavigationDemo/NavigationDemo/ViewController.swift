//
//  ViewController.swift
//  NavigationDemo
//
//  Created by APPLE on 24/12/17.
//  Copyright © 2017 APPLE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func PushbtnPressed(_ sender: Any) {
       let vc2 = storyboard?.instantiateViewController(withIdentifier: "ViewController2")
        self.navigationController?.pushViewController(vc2!, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //
        self.navigationItem.title = "PAGE 1"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

