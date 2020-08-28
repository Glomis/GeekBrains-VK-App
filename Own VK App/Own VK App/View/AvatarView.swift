//
//  AvatarView.swift
//  Own VK App
//
//  Created by Tatyana on 26.08.2020.
//  Copyright © 2020 Max&Co. All rights reserved.
//

import UIKit

class AvatarView: UIView {

    override func layoutSubviews() {
        layer.cornerRadius = frame.height / 2
        layer.shadowOpacity = 0.6
        layer.shadowColor = UIColor.darkGray.cgColor
        layer.shadowRadius = 3
        layer.shadowOffset = CGSize(width: 5, height: 5)
    }

}
