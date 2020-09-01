//
//  Alert.swift
//  Own VK App
//
//  Created by Tatyana on 24.08.2020.
//  Copyright © 2020 Max&Co. All rights reserved.
//

import Foundation
import UIKit

struct Alert {
    static func showBasicAlert(on vc: UIViewController, with tittle: String, massage: String) {
        let alert = UIAlertController(title: tittle, message: massage, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(okAction)
        vc.present(alert, animated: true)
    }
}
