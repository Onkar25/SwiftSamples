//
//  ViewController2.swift
//  NavigationDemo
//
//  Created by APPLE on 24/12/17.
//  Copyright © 2017 APPLE. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
var val = 1
    var timer = Timer()
    override func viewDidLoad() {
        super.viewDidLoad()
 self.navigationItem.title = "PAGE 2"
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(MyMehod), userInfo: nil, repeats: true)
        // Do any additional setup after loading the view.
    }
    
    @objc func MyMehod(){
        print("MethodCalled")
     
        if val == 3
        {
            self.navigationController?.popViewController(animated: true)
        }
       val=val+1
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        timer.invalidate()
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
