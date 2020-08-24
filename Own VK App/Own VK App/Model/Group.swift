//
//  Group.swift
//  Own VK App
//
//  Created by Tatyana on 19.08.2020.
//  Copyright © 2020 Max&Co. All rights reserved.
//

import UIKit

struct Group {
    let name: String
    let avatar: UIImage?
    let description: String?
    let subscribers: Int
}

extension Group: Equatable {
    static func != (lhs: Group , rhs: Group) -> Bool {
        return lhs.name == rhs.name &&
               lhs.avatar == rhs.avatar
    }
}
