//
//  ViewController.swift
//  AsssgnTableView
//
//  Created by Onkar Murkar on 03/12/17.
//  Copyright © 2017 Onkar Murkar. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource , UITableViewDelegate{
   let arrProfileName = ["Onkar Murkar", "Shraddha" , "Afzal Ansari" , "Janak","Krunal Darji","Musheer Khan" ,"Chetan Patil" , "Santosh Ghanate" , "Sushant Lawate", "Ankush Patil"]
    let arrProfilePic = ["Onkar","Shraddha","Afzal","Janak","Krunal","Musheer","Chetan","Santosh","Sushant","Ankush"]
    
  var arrStatus: [String] = []
    @IBOutlet weak var tvFacebook: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrStatus.append("My name is Onkar Prasad Murkar")
        arrStatus.append("My name is Shraddha")
        arrStatus.append("My name is Afzal Ansari")
        arrStatus.append("My name is Janak")
        arrStatus.append("My name is Krunal Darji")
        arrStatus.append("My name is Musheer Khan")
        arrStatus.append("My name is Chetan Patil")
        arrStatus.append("My name is Santosh Ghanate")
        arrStatus.append("My name is Sushant Lawate")
        arrStatus.append("My name is Ankush Patil")
        
        
        tvFacebook.delegate = self
        tvFacebook.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     
       return arrStatus.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tvcFacebook = tableView.dequeueReusableCell(withIdentifier: "facebook") as! tvcFacebookView
        tvcFacebook.lblProfileName.text = arrProfileName[indexPath.row]
        tvcFacebook.lblStatus.text = arrStatus[indexPath.row]
        tvcFacebook.ivProfilePic.image = UIImage(named: arrProfilePic[indexPath.row])
        
        return tvcFacebook
    }

}

