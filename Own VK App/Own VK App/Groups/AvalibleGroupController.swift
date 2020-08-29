//
//  AvalibleGroupController.swift
//  Own VK App
//
//  Created by Tatyana on 22.08.2020.
//  Copyright © 2020 Max&Co. All rights reserved.
//

import UIKit

class AvalibleGroupController: UITableViewController {
    
    // Constants
    let demoGroups = [
        Group(name: "18+", avatar: #imageLiteral(resourceName: "002-gender"), description: nil, subscribers: 325768),
        Group(name: "Popular Films", avatar: #imageLiteral(resourceName: "003-video-player"), description: nil, subscribers: 500103),
        Group(name: "Wild animals", avatar: #imageLiteral(resourceName: "001-lion"), description: nil, subscribers: 1052),
        Group(name: "About YouTube", avatar: #imageLiteral(resourceName: "004-youtube"), description: nil, subscribers: 157554),
        Group(name: "iOS Apps Free", avatar: #imageLiteral(resourceName: "005-app-store"), description: nil, subscribers: 5487),
        Group(name: "Marvel", avatar: #imageLiteral(resourceName: "marvel"), description: nil, subscribers: 489500),
        Group(name: "Swift Developers", avatar: #imageLiteral(resourceName: "swift"), description: nil, subscribers: 1430),
        Group(name: "Anime Party", avatar: #imageLiteral(resourceName: "totoro"), description: nil, subscribers: 8700)
    ]
    
    // MARK: - Table View Data Source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return demoGroups.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "avaliableGroupCell", for: indexPath) as! GroupCell
        
        let group = demoGroups[indexPath.row]
        cell.describeGroup(from: group)
        
        return cell
    }
    
    
    //MARK: - Table VIew Delegate
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
}
