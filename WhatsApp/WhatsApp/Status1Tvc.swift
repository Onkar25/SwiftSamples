//
//  Status1Tvc.swift
//  WhatsApp
//
//  Created by Onkar Murkar on 17/12/17.
//  Copyright © 2017 APPLE. All rights reserved.
//

import UIKit

class Status1Tvc: UITableViewCell {

    @IBOutlet weak var imgAddSysbol: UIImageView!
    @IBOutlet weak var lblProfileTime: UILabel!
    @IBOutlet weak var lblProfileName: UILabel!
    @IBOutlet weak var imgProfilePic: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        imgProfilePic.layer.cornerRadius = 35
        imgProfilePic.clipsToBounds = true
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
