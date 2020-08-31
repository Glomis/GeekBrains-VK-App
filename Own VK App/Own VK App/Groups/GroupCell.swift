//
//  GroupCell.swift
//  Own VK App
//
//  Created by Tatyana on 22.08.2020.
//  Copyright © 2020 Max&Co. All rights reserved.
//

import UIKit

class GroupCell: UITableViewCell {
    
    @IBOutlet weak var groupAvatar: UIImageView!
    @IBOutlet weak var groupNameLabel: UILabel!
    @IBOutlet weak var groupSubLabel: UILabel!
    
    
    func configure(from group: Group) {
        groupNameLabel.text = group.name
        groupSubLabel.text = "Number of subscribers: \(group.subscribers)"
        
        guard group.avatar != nil else { return groupAvatar.image = #imageLiteral(resourceName: "man-2") }
        groupAvatar.image = group.avatar
    }
    
}
