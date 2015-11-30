//
//  Meal.swift
//  FoodTracker
//
//  Created by 周宁 on 15/11/30.
//  Copyright © 2015年 slyak. All rights reserved.
//

import UIKit

class Meal {
    //MARK: Properties
    
    var name: String
    var photo: UIImage?
    var rating: Int
    
    init?(name: String, photo: UIImage?, rating: Int) {
        self.name = name
        self.photo = photo
        self.rating = rating
        
        // Initialization should fail if there is no name or if the rating is negative.
        
        if name.isEmpty || rating < 0 {
            return nil
        }
    }
    
    
}