//
//  CustomCell.swift
//  prism-ios
//
//  Created by leesoojeong on 23/11/2018.
//  Copyright © 2018 GooJinSun. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var questionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
//        questionLabel.highlightedTextColor = UIColor(purple)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        if selected == true {
            questionLabel.isHighlighted = true
        } else {
            questionLabel.isHighlighted = false
        }
        // Configure the view for the selected state
    }

}
