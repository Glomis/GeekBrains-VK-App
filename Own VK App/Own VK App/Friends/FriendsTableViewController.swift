//
//  FriendsTableViewController.swift
//  Own VK App
//
//  Created by Tatyana on 19.08.2020.
//  Copyright © 2020 Max&Co. All rights reserved.
//

import UIKit

class FriendsTableViewController: UITableViewController {
    
    
    struct UserList {
        let letter: String
        let users: [User]
    }
    
    
    // Variables
    var users = [
        User(firstName: "Keanu", lastName: "Reeves", bidthDay: nil, avatar: #imageLiteral(resourceName: "hipster"), photos: [#imageLiteral(resourceName: "KeanuReeves1"), #imageLiteral(resourceName: "KeanuReeves2"), #imageLiteral(resourceName: "keanu3"), #imageLiteral(resourceName: "keanu4"), #imageLiteral(resourceName: "keanu5")]),
        User(firstName: "John", lastName: "Travolta", bidthDay: nil, avatar: #imageLiteral(resourceName: "beard"), photos: [#imageLiteral(resourceName: "Travolta3"), #imageLiteral(resourceName: "Travolta2"), #imageLiteral(resourceName: "Travolta1")]),
        User(firstName: "Johnny", lastName: "Depp", bidthDay: nil, avatar: #imageLiteral(resourceName: "man"), photos: [#imageLiteral(resourceName: "Johnny3"), #imageLiteral(resourceName: "Jonny2"), #imageLiteral(resourceName: "Jonny1")]),
        User(firstName: "Matthew", lastName: "McConaughey", bidthDay: nil, avatar: #imageLiteral(resourceName: "profile"), photos: [#imageLiteral(resourceName: "Mat1"), #imageLiteral(resourceName: "Mat2"), #imageLiteral(resourceName: "Mat3")]),
        User(firstName: "Benedict", lastName: "Cumberbatch", bidthDay: nil, avatar: nil, photos: []),
        User(firstName: "Daniel", lastName: "Radcliffe", bidthDay: nil, avatar: nil, photos: []),
        User(firstName: "Leonardo", lastName: "DiCaprio", bidthDay: nil, avatar: nil, photos: []),
        User(firstName: "Michael", lastName: "Fassbender", bidthDay: nil, avatar: nil, photos: []),
        User(firstName: "Tom", lastName: "Hardy", bidthDay: nil, avatar: nil, photos: []),
        User(firstName: "Elijah", lastName: "Wood", bidthDay: nil, avatar: nil, photos: []),
        User(firstName: "Edward", lastName: "Norton", bidthDay: nil, avatar: nil, photos: []),
        User(firstName: "War", lastName: "War", bidthDay: nil, avatar: nil, photos: []),
        User(firstName: "WWW", lastName: "WWewq", bidthDay: nil, avatar: nil, photos: [])
    ]
    
    var sortedUserList: [UserList] = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sortedUserList = map(input: users)
    }
    
    
    private func map(input: [User]) -> [UserList] {
        let sortedUsers = input.sorted { (user1, user2) -> Bool in
            user1.firstName < user2.firstName
        }
        
        var output: [UserList] = []
        var i = 0
        
        while i < input.count {
            let letter = sortedUsers[i].tittleFirstLetter
            
            var userOne: [User] = []
            
            for user in sortedUsers[i...] {
                if user.tittleFirstLetter == letter {
                    userOne.append(user)
                }
                else {
                    output.append(UserList(letter: letter, users: userOne))
                    break
                }
            }
            i += userOne.count
        }
        return output
    }
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sortedUserList[section].letter
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return sortedUserList.count
    }
    // MARK: - Table View Data Source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sortedUserList[section].users.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "friendCell", for: indexPath) as! FriendCell
        
        let user = sortedUserList[indexPath.section].users[indexPath.row]
        cell.configure(from: user)
        
        return cell
    }
    
    
    //MARK: - Table View Delegate
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            users.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showFriendPhotos", sender: self)
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
    
    //MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showFriendPhotos" {
            
            guard let indexPath = tableView.indexPathForSelectedRow else { return }
            //            guard let section = tableView.numberOfRows(inSection: ind) else {
            //                return
            //            }
            
            guard let destination = segue.destination as? FriendsCollectionViewController else {
                return
            }
            let user = sortedUserList[indexPath.section].users[indexPath.row]
            
            destination.user = user
            destination.name = "\(user.firstName) \(user.lastName)"
        }
    }
    
}
