//
//  MessageCell.swift
//  Flash Chat iOS13
//
//  Created by Leonardo Cardoso on 23/06/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class MessageCell: UITableViewCell {

    @IBOutlet weak var viewMessageCell: UIView!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var avatarImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        viewMessageCell.layer.cornerRadius = messageLabel.frame.height / 10
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
