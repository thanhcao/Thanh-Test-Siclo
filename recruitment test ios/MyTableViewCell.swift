//
//  MyTableViewCell.swift
//  Siclo app
//
//  Created by Siclo on 7/8/16.
//  Copyright © 2016 Siclo. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet var customDetailTextLabel: UILabel!
    @IBOutlet var customTextLabel: UILabel!
    @IBOutlet var customImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
