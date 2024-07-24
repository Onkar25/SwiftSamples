//
//  ChatTvc.swift
//  WhatsApp
//
//  Created by APPLE on 10/12/17.
//  Copyright © 2017 APPLE. All rights reserved.
//

import UIKit

class ChatTvc: UITableViewCell {

    @IBOutlet weak var lblChatDesc: UILabel!
    @IBOutlet weak var lblChatCount: UILabel!
    @IBOutlet weak var lblProfileTime: UILabel!
    @IBOutlet weak var lblProfileName: UILabel!
    @IBOutlet weak var imgProfilePic: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        imgProfilePic.layer.cornerRadius = 35
        imgProfilePic.clipsToBounds = true
        
        lblChatCount.layer.cornerRadius = 12
        lblChatCount.clipsToBounds = true
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
