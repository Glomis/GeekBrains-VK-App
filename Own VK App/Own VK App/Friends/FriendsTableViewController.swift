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
        User(firstName: "Keanu", lastName: "Reeves", bidthDay: nil, avatar: #imageLiteral(resourceName: "hipster"), photos: [#imageLiteral(resourceName: "KeanuReeves1"), #imageLiteral(resourceName: "KeanuReeves2"), #imageLiteral(resourceName: "keanu3"), #imageLiteral(resourceName: "keanu4"), #imageLiteral(resourceName: "keanu5")]),
        User(firstName: "John", lastName: "Travolta", bidthDay: nil, avatar: #imageLiteral(resourceName: "beard"), photos: [#imageLiteral(resourceName: "Travolta3"), #imageLiteral(resourceName: "Travolta2"), #imageLiteral(resourceName: "Travolta1")]),
        User(firstName: "Johnny", lastName: "Depp", bidthDay: nil, avatar: #imageLiteral(resourceName: "man"), photos: [#imageLiteral(resourceName: "Johnny3"), #imageLiteral(resourceName: "Jonny2"), #imageLiteral(resourceName: "Jonny1")]),
        User(firstName: "Matthew", lastName: "McConaughey", bidthDay: nil, avatar: #imageLiteral(resourceName: "profile"), photos: [#imageLiteral(resourceName: "Mat1"), #imageLiteral(resourceName: "Mat2"), #imageLiteral(resourceName: "Mat3")])
    ]
    
    // MARK: - Table View Data Source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "friendCell", for: indexPath) as! FriendCell
        
        let user = users[indexPath.row]
        cell.describeUser(from: user)
        
        return cell
    }
    
    
    //MARK: - Table View Delegate
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            users.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showFriendPhotos" {
            
            guard let indexPath = tableView.indexPathForSelectedRow else { return }
            
            let destination = segue.destination as! FriendsCollectionViewController
            destination.user = users[indexPath.row]
        }
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showFriendPhotos", sender: self)
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
           return 90
       }
    
}