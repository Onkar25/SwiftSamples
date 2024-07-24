//
//  ViewController.swift
//  WhatsApp
//
//  Created by APPLE on 10/12/17.
//  Copyright © 2017 APPLE. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate  {
    @IBOutlet weak var segWhatsAppTabs: UISegmentedControl!
    @IBOutlet weak var lblWhatsApp: UILabel!
    @IBOutlet weak var WhatAppTv: UITableView!
    
    var sec = 0 ;
    
    let chatProfileName = ["Onkar Murkar", "Shraddha" , "Afzal Ansari" , "Janak","Krunal Darji","Musheer Khan" ,"Chetan Patil" , "Santosh Ghanate" , "Sushant Lawate", "Ankush Patil"]
    let chatProfileImage = ["Onkar","Shraddha","Afzal","Janak","Krunal","Musheer","Chetan","Santosh","Sushant","Ankush"]
    var chatProfileChat: [String] = []
    let chatProfileChatCount = ["10","","53","12","22","87","","87","32",""]
    let chatProfileLastTime = ["10:19 AM","22:19 AM","12:19 AM","13:19 AM","09:19 AM","06:19 AM","08:19 AM","03:19 AM","05:19 AM","01:19 AM"]
    
    let CallProfileName = ["Afzal Ansari","Janak","Krunal Darji","Chetan Patil" , "Sushant Lawate", "Onkar Murkar",]
    let CallProfileImage = ["Afzal","Janak","Krunal","Chetan","Sushant","Onkar"]
    let CallStatusImage = ["Video","Video","Call","Call","Video","Call"]
    let CallLogImage = ["Incomming","Outgoing","Incomming","Outgoing","Outgoing","Incomming"]
    let CallLogTime = ["13:19 AM","09:19 AM","06:19 AM","08:19 AM","05:19 AM","01:19 AM"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        segWhatsAppTabs.layer.borderWidth = 0
        chatProfileChat.append("My name is Onkar Prasad Murkar")
        chatProfileChat.append("My name is Shraddha")
        chatProfileChat.append("My name is Afzal Ansari")
        chatProfileChat.append("My name is Janak")
        chatProfileChat.append("My name is Krunal Darji")
        chatProfileChat.append("My name is Musheer Khan")
        chatProfileChat.append("My name is Chetan Patil")
        chatProfileChat.append("My name is Santosh Ghanate")
        chatProfileChat.append("My name is Sushant Lawate")
        chatProfileChat.append("My name is Ankush Patil")
        
        WhatAppTv.separatorStyle = .none
        // Do any additional setup after loading the view, typically from a nib.
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0
        {
            return 0
        }
        return 30
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if sec==1
        {
            if section == 0
            {
                return 1
            }
            else if section == 1
            {
                return 3
            }
            else if section == 2
            {
                return 4
            }
            else
            {
                return 2
            }
        }
        else if sec == 2
        {
            return CallProfileName.count
        }
        else
        {
            return chatProfileName.count
        }
    }

    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let view = UIView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 30))
        let myGray = UIColor(hexString: "#e3e3e3ff")
        view.backgroundColor = myGray
        let label = UILabel(frame: CGRect(x: 10, y: 5, width: view.frame.size.width, height:20))
        let myGreen = UIColor(hexString: "#075e54ff")
        label.textColor = myGreen
        label.font = UIFont.boldSystemFont(ofSize: 14)
        if section == 1
        {
            label.text = "Recent updates"
        }
        if section == 2
        {
            label.text = "Viewed updates";
        }
        if section == 3
        {
            label.text = "Muted updates";
        }
        
        view.addSubview(label)
        return view
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        if sec==1
        {
            return 4;
        }
        return 1;
    }
    @IBAction func segmentIndexChanged(_ sender: UISegmentedControl) {
        sec = segWhatsAppTabs.selectedSegmentIndex
        WhatAppTv.reloadData()
    }
    
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if sec==0{
            let chatCell = tableView.dequeueReusableCell(withIdentifier: "chatCell") as! ChatTvc
           
            chatCell.lblProfileName.text = chatProfileName[indexPath.row]
            chatCell.lblChatDesc.text = chatProfileChat[indexPath.row]
            chatCell.imgProfilePic.image = UIImage(named: chatProfileImage[indexPath.row])
            if chatProfileChatCount[indexPath.row] != ""{
                chatCell.lblChatCount.text = chatProfileChatCount[indexPath.row]
                chatCell.lblChatCount.isHidden = false
            }else
            {
                chatCell.lblChatCount.isHidden = true
            }
            chatCell.lblProfileTime.text = chatProfileLastTime[indexPath.row]
            
            return chatCell
        }
        else if sec == 1
        {
            if indexPath.section == 0
            {
                let statusCell = tableView.dequeueReusableCell(withIdentifier: "statusCell1") as! Status1Tvc
                statusCell.lblProfileName.text = chatProfileName[indexPath.row]
                statusCell.imgProfilePic.image = UIImage(named: chatProfileImage[indexPath.row])
                return statusCell
                
            }
            else if indexPath.section == 1
            {
                let statusCell = tableView.dequeueReusableCell(withIdentifier: "statusCell1") as! Status1Tvc
                statusCell.lblProfileName.text = CallProfileName[indexPath.row]
                statusCell.lblProfileTime.text  = CallLogTime[indexPath.row]
                statusCell.imgProfilePic.image = UIImage(named: CallProfileImage[indexPath.row])
                statusCell.imgProfilePic.layer.borderWidth = 2
                let myGreen = UIColor(hexString: "#075e54ff")
                statusCell.imgProfilePic.layer.borderColor = myGreen?.cgColor
                statusCell.imgAddSysbol.isHidden = true
                return statusCell
            }
            else if indexPath.section == 2
            {
                let statusCell = tableView.dequeueReusableCell(withIdentifier: "statusCell1") as! Status1Tvc
                statusCell.lblProfileName.text = CallProfileName[indexPath.row]
                statusCell.lblProfileTime.text  = CallLogTime[indexPath.row]
                statusCell.imgProfilePic.image = UIImage(named: CallProfileImage[indexPath.row])
                statusCell.imgProfilePic.layer.borderWidth = 2
                let myGreen = UIColor(hexString: "#075e54ff")
                statusCell.imgProfilePic.layer.borderColor = myGreen?.cgColor
                statusCell.imgAddSysbol.isHidden = true
                return statusCell
            }
            else
            {
                let statusCell = tableView.dequeueReusableCell(withIdentifier: "statusCell1") as! Status1Tvc
                statusCell.lblProfileName.text = CallProfileName[indexPath.row]
                statusCell.lblProfileTime.text  = CallLogTime[indexPath.row]
                statusCell.imgProfilePic.image = UIImage(named: CallProfileImage[indexPath.row])
                statusCell.imgProfilePic.layer.borderWidth = 2
                let myGreen = UIColor(hexString: "#075e54ff")
                statusCell.imgProfilePic.layer.borderColor = myGreen?.cgColor
                statusCell.imgAddSysbol.isHidden = true
                return statusCell
            }
        }
        else
        {
            let callCell = tableView.dequeueReusableCell(withIdentifier: "callCell") as! CallTvc
            callCell.lblCallTime.text = CallLogTime[indexPath.row]
            callCell.lblProfileName.text = CallProfileName[indexPath.row]
            callCell.imgProfilePic.image = UIImage(named: CallProfileImage[indexPath.row])
            callCell.imgCallLogs.image = UIImage(named: CallLogImage[indexPath.row])
            callCell.imgCallStatus.image = UIImage(named: CallStatusImage[indexPath.row])
            return callCell
        }
    }
    

    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}
extension UIColor
{
    public convenience init?(hexString: String) {
        let r, g, b, a: CGFloat
        
        if hexString.hasPrefix("#") {
            let start = hexString.index(hexString.startIndex, offsetBy: 1)
            let hexColor = String(hexString[start...])
            
            if hexColor.count == 8 {
                let scanner = Scanner(string: hexColor)
                var hexNumber: UInt64 = 0
                
                if scanner.scanHexInt64(&hexNumber) {
                    r = CGFloat((hexNumber & 0xff000000) >> 24) / 255
                    g = CGFloat((hexNumber & 0x00ff0000) >> 16) / 255
                    b = CGFloat((hexNumber & 0x0000ff00) >> 8) / 255
                    a = CGFloat(hexNumber & 0x000000ff) / 255
                    
                    self.init(red: r, green: g, blue: b, alpha: a)
                    return
                }
            }
        }
        
        return nil
    }
}

