//
//  Session.swift
//  Own VK App
//
//  Created by Tatyana on 14.12.2020.
//  Copyright © 2020 Max&Co. All rights reserved.
//

import Foundation

class Session {
    
    var token: String?
    var userID: Int?
    
    static let shared = Session()
    
    private init() { }
}
