//
//  BackView.swift
//  Own VK App
//
//  Created by Tatyana on 27.08.2020.
//  Copyright © 2020 Max&Co. All rights reserved.
//

import UIKit

class BackView: UIView {

    override func layoutSubviews() {
        layer.cornerRadius = 5
        layer.shadowOffset = CGSize(width: 3, height: 3)
        layer.shadowOpacity = 0.1
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowRadius = 0.7
    }

}
