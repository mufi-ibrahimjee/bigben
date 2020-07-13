//
//  ParticipantTableViewCell.swift
//  Bigben
//
//  Created by apple on 03/07/20.
//  Copyright © 2020 muffi. All rights reserved.
//

import UIKit

class ParticipantTableViewCell: UITableViewCell {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var view: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
  
        nameLabel.layer.cornerRadius = 20
        nameLabel.layer.masksToBounds = true
        view.layer.cornerRadius = 10
        view.layer.masksToBounds = true
        view.frame = CGRect(x: 0 , y: 0, width: self.view.frame.width, height: self.view.frame.height * 0.7)
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
