//
//  MyGroupsController.swift
//  Own VK App
//
//  Created by Tatyana on 22.08.2020.
//  Copyright © 2020 Max&Co. All rights reserved.
//

import UIKit

class MyGroupsController: UITableViewController {
    
    
    // MARK: - Table View Data Sours
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return demoGroups.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "groupCell", for: indexPath) as! GroupCell
        
        let group = demoGroups[indexPath.row]
        cell.configure(from: group)
        
        return cell
    }
    
    
    //MARK: - Table view Delegate
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            demoGroups.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
    
    //MARK: IB Actions
    @IBAction func addGroup(_ unwindSegue: UIStoryboardSegue) {
        guard unwindSegue.identifier == "addGroup" else { return }
        
        guard let avaliableGroupVC = unwindSegue.source as? AvalibleGroupController else { return }
        
        if let indexPath = avaliableGroupVC.tableView.indexPathForSelectedRow {
            let group = avaliableGroups[indexPath.row]
            if !demoGroups.contains(group) {
                demoGroups.append(group)
            } else {
                Alert.showBasicAlert(on: self, with: "Внимание!",
                                     massage: "Вы уже состоите в данной группе.")
            }
        }
        tableView.reloadData()
    }
    
}
