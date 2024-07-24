//
//  ViewController.swift
//  TableViewDemo
//
//  Created by APPLE on 26/11/17.
//  Copyright © 2017 APPLE. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var myTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let MyUIImageView = UIImageView(frame: CGRect(x: 20, y: 500, width: 100, height: 100))
        MyUIImageView.image = UIImage(named: "home.png")
        // self.view.addSubview(MyUIImageView)
        
        //TODO : Through Coding
        // myTableView.delegate = self
        // myTableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 10;
    }
    
    
    // Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
    // Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)
    
  
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let myTableViewCell = UITableViewCell.init(style: .subtitle, reuseIdentifier: "cell")
        print(indexPath.row)
        myTableViewCell.textLabel?.text = "Onkar Murkar"
        myTableViewCell.textLabel?.textColor = UIColor.red
        myTableViewCell.textLabel?.font = UIFont.boldSystemFont(ofSize:20)
        
        myTableViewCell.imageView?.image = UIImage(named: "Boss")
        myTableViewCell.imageView?.layer.borderWidth = 1
        myTableViewCell.imageView?.layer.borderColor = UIColor.black.cgColor
        
        myTableViewCell.detailTextLabel?.text = " bla bla bla Description Here"
        myTableViewCell.detailTextLabel?.textColor = UIColor.darkGray
        
        return myTableViewCell
    }
}

