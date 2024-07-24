//
//  CallTvc.swift
//  WhatsApp
//
//  Created by Xamarin Mac on 14/12/17.
//  Copyright © 2017 APPLE. All rights reserved.
//

import UIKit

class CallTvc: UITableViewCell {

    @IBOutlet weak var imgProfilePic: UIImageView!
    @IBOutlet weak var lblProfileName: UILabel!
    @IBOutlet weak var imgCallStatus: UIImageView!
    @IBOutlet weak var imgCallLogs: UIImageView!
    @IBOutlet weak var lblCallTime: UILabel!
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
