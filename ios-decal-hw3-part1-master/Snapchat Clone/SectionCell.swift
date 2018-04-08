//
//  SectionCell.swift
//  Snapchat Clone
//
//  Created by CiCi on 3/12/18.
//  Copyright © 2018 org.iosdecal. All rights reserved.
//

import UIKit

class SectionCell: UITableViewCell {
    

    @IBOutlet weak var readimagee: UIImageView!
    @IBOutlet weak var senderimage: UILabel!
    var realimage: UIImage!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
