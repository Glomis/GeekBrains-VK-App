//
//  FriendsTableViewController.swift
//  Own VK App
//
//  Created by Tatyana on 19.08.2020.
//  Copyright © 2020 Max&Co. All rights reserved.
//

import UIKit

class FriendsTableViewController: UITableViewController {
    
    var users = [
        User(firstName: "Sean", lastName: "Connery", bidthDay: nil, avatar: #imageLiteral(resourceName: "man")),
        User(firstName: "John", lastName: "Travolta", bidthDay: nil, avatar: #imageLiteral(resourceName: "beard")),
        User(firstName: "Johnny", lastName: "Depp", bidthDay: nil, avatar: #imageLiteral(resourceName: "hipster")),
        User(firstName: "Matthew", lastName: "McConaughey", bidthDay: nil, avatar: nil)
    ]
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "friendCell", for: indexPath) as! FriendCell
        
        let user = users[indexPath.row]
        cell.describeUser(from: user)
        
        return cell
    }
    
    
    // Editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            users.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
     
     /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
