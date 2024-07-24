//
//  CustomTVC.swift
//  CustomTableview
//
//  Created by Apple on 03/12/17.
//  Copyright © 2017 trycatch. All rights reserved.
//

import UIKit

class CustomTVC: UITableViewCell {

    @IBOutlet weak var lblPost: UILabel!
    @IBOutlet weak var lblProfileName: UILabel!
    @IBOutlet weak var imgVProfile: UIImageView!
    @IBOutlet weak var lblHeader: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        imgVProfile.layer.cornerRadius = 30
        imgVProfile.clipsToBounds = true
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
