//
//  tvcFacebookView.swift
//  AsssgnTableView
//
//  Created by Onkar Murkar on 03/12/17.
//  Copyright © 2017 Onkar Murkar. All rights reserved.
//

import UIKit

class tvcFacebookView: UITableViewCell {

    @IBOutlet weak var ivProfilePic: UIImageView!
    
    @IBOutlet weak var lblProfileName: UILabel!
    @IBOutlet weak var lblStatus: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        ivProfilePic.layer.cornerRadius = 40
        ivProfilePic.clipsToBounds  = true
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
