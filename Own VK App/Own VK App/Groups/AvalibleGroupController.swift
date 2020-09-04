//
//  AvalibleGroupController.swift
//  Own VK App
//
//  Created by Tatyana on 22.08.2020.
//  Copyright © 2020 Max&Co. All rights reserved.
//

import UIKit

class AvalibleGroupController: UITableViewController {
    
    // MARK: - Table View Data Source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return avaliableGroups.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "avaliableGroupCell", for: indexPath) as! GroupCell
        
        let group = avaliableGroups[indexPath.row]
        cell.configure(from: group)
        
        return cell
    }
    
    
    //MARK: - Table VIew Delegate
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
}
