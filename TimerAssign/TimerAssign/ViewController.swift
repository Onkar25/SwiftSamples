//
//  ViewController.swift
//  TimerAssign
//
//  Created by APPLE on 24/12/17.
//  Copyright © 2017 APPLE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var timer  = Timer();
    var timeLeft = 60;
    override func viewDidLoad() {
        super.viewDidLoad()
        lblTimer.text = "\(timeLeft)"
        lblTimer.layer.cornerRadius = 100
        lblTimer.clipsToBounds = true
        // Do any additional setup after loading the view, typically from a nib.
    }
    @objc func TimeChanger(){
        timeLeft = timeLeft-1;
        lblTimer.text = "\(timeLeft)"
        if timeLeft == 0
        {
            timer.invalidate()
            lblTimer.text = "BAS DUA ME YAAD RAKHNA"
            lblTimer.adjustsFontSizeToFitWidth = true
        }
    }
    @IBAction func minus10BtnPressed(_ sender: Any) {
        if timeLeft-10 > 0
        {
            timeLeft = timeLeft-10;
            lblTimer.text = "\(timeLeft)"
        }
    }
    @IBAction func plus10BtnPressed(_ sender: Any) {
        timeLeft = timeLeft+10;
        lblTimer.text = "\(timeLeft)"
    }
    @IBOutlet weak var lblTimer: UILabel!
    
    @IBAction func StopBtnPressed(_ sender: Any) {
        timer.invalidate()
    }
    @IBAction func PlayBtnPressed(_ sender: UIButton) {
        timeLeft = 60
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(TimeChanger), userInfo: nil, repeats: true)
        //print("Button Pressed")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

