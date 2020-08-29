//
//  FriendsCollectionViewController.swift
//  Own VK App
//
//  Created by Tatyana on 19.08.2020.
//  Copyright © 2020 Max&Co. All rights reserved.
//

import UIKit

class FriendsCollectionViewController: UICollectionViewController {
    
    var user: User!
    
    // MARK: Collection View Data Source
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return user.photos?.count ?? 0
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "friendsCollectionCell", for: indexPath) as! FriendPhotoCollectionViewCell
        
        cell.friendPhoto.image = user.photos![indexPath.row]
        return cell
    }
    
}
