//
//  GroupCell.swift
//  Own VK App
//
//  Created by Tatyana on 22.08.2020.
//  Copyright © 2020 Max&Co. All rights reserved.
//

import UIKit

class GroupCell: UITableViewCell {
    
    let group = Group.self
    
    @IBOutlet weak var groupAvatar: UIImageView!
    @IBOutlet weak var groupNameLabel: UILabel!
    @IBOutlet weak var groupSubLabel: UILabel!
    
    func describeGroup(from group: Group) {
        groupNameLabel.text = group.name
        groupSubLabel.text = "Number of subscribers: \(group.subscribers)"
        if group.avatar != nil {
            groupAvatar.image = group.avatar
        }
    }
}
