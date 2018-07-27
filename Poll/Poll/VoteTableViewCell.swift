//
//  VoteTableViewCell.swift
//  Poll
//
//  Created by Linh Bouniol on 7/26/18.
//  Copyright © 2018 Linh Bouniol. All rights reserved.
//

import UIKit

class VoteTableViewCell: UITableViewCell {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var responseLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
