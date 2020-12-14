//
//  Data.swift
//  Own VK App
//
//  Created by Tatyana on 04.09.2020.
//  Copyright © 2020 Max&Co. All rights reserved.
//

import Foundation

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

var demoGroups = [
    Group(name: "Marvel", avatar: #imageLiteral(resourceName: "marvel"), description: nil, subscribers: 489500),
    Group(name: "Swift Developers", avatar: #imageLiteral(resourceName: "swift"), description: nil, subscribers: 1430),
    Group(name: "Anime Party", avatar: #imageLiteral(resourceName: "totoro"), description: nil, subscribers: 8700),
    Group(name: "Active Sport", avatar: #imageLiteral(resourceName: "medal"), description: nil, subscribers: 127546)
]

let avaliableGroups = [
       Group(name: "18+", avatar: #imageLiteral(resourceName: "002-gender"), description: nil, subscribers: 325768),
       Group(name: "Popular Films", avatar: #imageLiteral(resourceName: "003-video-player"), description: nil, subscribers: 500103),
       Group(name: "Wild animals", avatar: #imageLiteral(resourceName: "001-lion"), description: nil, subscribers: 1052),
       Group(name: "About YouTube", avatar: #imageLiteral(resourceName: "004-youtube"), description: nil, subscribers: 157554),
       Group(name: "iOS Apps Free", avatar: #imageLiteral(resourceName: "005-app-store"), description: nil, subscribers: 5487),
       Group(name: "Marvel", avatar: #imageLiteral(resourceName: "marvel"), description: nil, subscribers: 489500),
       Group(name: "Swift Developers", avatar: #imageLiteral(resourceName: "swift"), description: nil, subscribers: 1430),
       Group(name: "Anime Party", avatar: #imageLiteral(resourceName: "totoro"), description: nil, subscribers: 8700)
   ]
