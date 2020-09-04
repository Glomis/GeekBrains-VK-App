//
//  FriendsTableViewController.swift
//  Own VK App
//
//  Created by Tatyana on 19.08.2020.
//  Copyright © 2020 Max&Co. All rights reserved.
//

import UIKit

class FriendsTableViewController: UITableViewController {
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    // Variables
    var sortedUserList: [UserList] = []
    var searchedUsers: [UserList] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchBar.delegate = self
        
        sortedUserList = map(input: users)
        searchedUsers = sortedUserList
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
            if i == input.count {
                output.append(UserList(letter: letter, users: userOne))
            }
        }
        return output
    }
    
    
    // MARK: - Table View Data Source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return searchedUsers.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return searchedUsers[section].users.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "friendCell", for: indexPath) as! FriendCell
        
        let user = searchedUsers[indexPath.section].users[indexPath.row]
        cell.configure(from: user)
        
        return cell
    }
    
    
    //MARK: - Table View Delegate
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        switch editingStyle {
        case .delete:
            searchedUsers[indexPath.section].users.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            // C удалением секции вопрос открыт
            //            if searchedUsers[indexPath.section].users.isEmpty {
            //                tableView.deleteSections(<#T##sections: IndexSet##IndexSet#>, with: .fade)
        //            }
        default:
            return
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showFriendPhotos", sender: self)
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
    // Header
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return searchedUsers[section].letter
    }
    
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.tintColor = #colorLiteral(red: 0.3730736971, green: 0.5612065196, blue: 0.8904624581, alpha: 1)
        let header = view as! UITableViewHeaderFooterView
        header.textLabel?.textColor = UIColor.darkGray
    }
    
    
    //MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showFriendPhotos" {
            
            guard let indexPath = tableView.indexPathForSelectedRow else { return }
            
            guard let destination = segue.destination as? FriendsCollectionViewController else {
                return
            }
            
            let user = searchedUsers[indexPath.section].users[indexPath.row]
            
            destination.user = user
            destination.name = "\(user.firstName) \(user.lastName)"
        }
    }
}

extension FriendsTableViewController: UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        guard let text = searchBar.text else { return }
        
        if text.isEmpty {
            searchedUsers = sortedUserList
        } else {
            searchedUsers = sortedUserList.filter({ (userList) -> Bool in
                return userList.users.contains { (user) -> Bool in
                    return user.firstName.contains(text)
                }
            })
        }
        tableView.reloadData()
    }
}
