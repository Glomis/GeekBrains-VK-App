//
//  AvatarView.swift
//  Own VK App
//
//  Created by Tatyana on 26.08.2020.
//  Copyright © 2020 Max&Co. All rights reserved.
//

import UIKit

class AvatarView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setViewShadow()
        layer.cornerRadius = frame.height / 2
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setViewShadow()
        layer.cornerRadius = frame.height / 2
    }
    
    func setViewShadow() {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 6.0, height: 4.0)
        layer.shadowRadius = 8
        layer.shadowOpacity = 0.8
        clipsToBounds = true
        layer.masksToBounds = false
    }
}
