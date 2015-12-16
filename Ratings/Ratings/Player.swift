//
//  Player.swift
//  Ratings
//
//  Created by 周宁 on 15/12/17.
//  Copyright © 2015年 slyak. All rights reserved.
//

import UIKit

struct Player {
    var name: String?
    var game: String?
    var rating: Int
    
    init(name: String?, game: String?, rating: Int) {
        self.name = name
        self.game = game
        self.rating = rating
}
}
