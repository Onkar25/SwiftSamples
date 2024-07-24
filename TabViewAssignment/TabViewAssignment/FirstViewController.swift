//
//  FirstViewController.swift
//  TabViewAssignment
//
//  Created by admin on 25/12/17.
//  Copyright © 2017 trycatch. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController , UITableViewDataSource,UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 1
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SongTVC") as! SongTVC
        
        cell.lblSongName.text = "Tere Bin"
        cell.lblSongPic.image = UIImage(named: "chicken")
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

