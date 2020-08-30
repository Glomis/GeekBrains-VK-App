//
//  CustomButton.swift
//  Own VK App
//
//  Created by Tatyana on 29.08.2020.
//  Copyright © 2020 Max&Co. All rights reserved.
//

import UIKit

extension UIButton {
    
    func setShadow() {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 0.0, height: 6.0)
        layer.shadowRadius = 8
        layer.shadowOpacity = 0.5
        clipsToBounds = true
        layer.masksToBounds = false
    }
    
    /*
     override init(frame: CGRect) {
     super.init(frame: frame)
     setShadow()
     }
     
     required init?(coder: NSCoder) {
     super.init(coder: coder)
     setShadow()
     }
     */
}
