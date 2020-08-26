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
    
    @IBOutlet weak var userAvatar: UIImageView!
    @IBOutlet weak var userFirstName: UILabel!
    @IBOutlet weak var userLastName: UILabel!
    
    func describeUser(from user: User) {
        userFirstName.text = user.firstName
        userLastName.text = user.lastName
        if user.avatar != nil {
            userAvatar.image = user.avatar
        } else {
            userAvatar.image = #imageLiteral(resourceName: "user")
        }
    }
}
