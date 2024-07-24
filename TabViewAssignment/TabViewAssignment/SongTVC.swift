//
//  SongTVC.swift
//  TabViewAssignment
//
//  Created by admin on 25/12/17.
//  Copyright © 2017 trycatch. All rights reserved.
//

import UIKit

class SongTVC: UITableViewCell {

    @IBOutlet weak var lblSongName: UILabel!
    @IBOutlet weak var lblSongPic: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        lblSongPic.layer.cornerRadius = 30
        lblSongPic.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
