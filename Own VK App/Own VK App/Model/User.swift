//
//  User.swift
//  Own VK App
//
//  Created by Tatyana on 19.08.2020.
//  Copyright © 2020 Max&Co. All rights reserved.
//

import UIKit

struct User {
    let firstName: String
    let lastName: String
    let bidthDay: Date?
    var avatar: UIImage?
    var photos: [UIImage]?
    
    var tittleFirstLetter: String {
        return String(firstName.first!)
    }
}
