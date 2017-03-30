//
//  UpperTableViewCell.swift
//  SampleReferenceProject
//
//  Created by Sierra 4 on 30/03/17.
//  Copyright © 2017 code-brew. All rights reserved.
//

import UIKit

class UpperTableViewCell: UITableViewCell {

    @IBOutlet weak var lblMessage: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
