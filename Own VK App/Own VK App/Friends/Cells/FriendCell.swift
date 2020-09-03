//
//  FriendCell.swift
//  Own VK App
//
//  Created by Tatyana on 22.08.2020.
//  Copyright © 2020 Max&Co. All rights reserved.
//

import UIKit

class FriendCell: UITableViewCell {
    
    let user = User.self
    
    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var userAvatar: UIImageView!
    @IBOutlet weak var userFirstName: UILabel!
    @IBOutlet weak var userLastName: UILabel!
    
    override func layoutSubviews() {
        userAvatar.layer.cornerRadius = 30
    }
    
    func configure(from user: User) {
        userFirstName.text = user.firstName
        userLastName.text = user.lastName

        guard user.avatar != nil else { return userAvatar.image = #imageLiteral(resourceName: "user") }
        userAvatar.image = user.avatar
    }
}
