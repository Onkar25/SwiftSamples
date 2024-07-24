//
//  ViewController.swift
//  ProgramaticallyLayout
//
//  Created by Xamarin Mac on 11/24/17.
//  Copyright © 2017 Servpro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //self.view.backgroundColor = UIColor(patternImage: UIImage(named: "MyBackground.jpg"))
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "MyBackground.jpg")!)
        // Device Height & Width
        //let height = self.view.frame.size.height
        
        let width = self.view.frame.size.width
        let imgX = width-((width/2)+(150/2))
        
        let imgLogo = UIImageView(frame: CGRect(x: imgX, y: 30, width: 150, height: 150))
        imgLogo.image = UIImage(named: "apple_logo_1.png")
        view.addSubview(imgLogo)
        
        let regX = width-((width/2)+(200/2))
        
        let RegLabel = UILabel(frame: CGRect(x: regX, y: 200, width: 200, height: 20))
        RegLabel.text = "CREATE ACCOUNT"
        RegLabel.textAlignment = .center
        RegLabel.textColor = UIColor.white
        
        view.addSubview(RegLabel)
        
        let imgCapX = width - 120;
        let imgCapImg = UIImageView(frame: CGRect(x: imgCapX, y: 340, width: 100, height: 100))
        imgCapImg.image = UIImage(named: "Image_Capture_icon.png")
        view.addSubview(imgCapImg)
        
        let txtFirstName = UITextField(frame: CGRect(x: 20, y: 340, width: 200, height: 30))
        txtFirstName.placeholder = "First Name"
        txtFirstName.textColor = UIColor.white
        txtFirstName.layer.borderWidth = 1
        txtFirstName.layer.borderColor = UIColor.white.cgColor
        view.addSubview(txtFirstName)
        
        let txtLastName = UITextField(frame: CGRect(x: 20, y: 390, width: 200, height: 30))
        txtLastName.placeholder = "Last Name"
        txtLastName.textColor = UIColor.white
        txtLastName.layer.borderWidth = 1
        
        txtLastName.layer.borderColor = UIColor.white.cgColor
        view.addSubview(txtLastName)
        
           let txtUsernameWidth = (width-40)
        let txtUsername = UITextField(frame: CGRect(x: 20, y: 450, width: txtUsernameWidth, height: 30))
        txtUsername.placeholder = "Username"
        txtUsername.textColor = UIColor.white
        txtUsername.layer.borderWidth = 1
        txtUsername.layer.borderColor = UIColor.white.cgColor
        view.addSubview(txtUsername)
        
        let txtPasswordWidth = (width-40)
        let txtPassword = UITextField(frame: CGRect(x: 20, y: 500, width: txtPasswordWidth, height: 30))
        txtPassword.placeholder = "Password"
        txtPassword.isSecureTextEntry = true
        txtPassword.textColor = UIColor.white
        txtPassword.layer.borderWidth = 1
        txtPassword.layer.borderColor = UIColor.white.cgColor
        view.addSubview(txtPassword)
        
        let btnSubmitX = width-((width/2)+(100/2))
        let btnSubmit = UIButton(frame: CGRect(x: btnSubmitX, y: 550, width: 100, height: 30))
        btnSubmit.setTitle("Submit", for: .normal)
        btnSubmit.backgroundColor = UIColor.gray
        btnSubmit.layer.borderWidth = 1
        btnSubmit.layer.borderColor = UIColor.white.cgColor
        view.addSubview(btnSubmit)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

