//
//  Meal.swift
//  FoodTracker
//
//  Created by Sunil M Khambaita on 2017-07-10.
//  Copyright © 2017 Sunil. All rights reserved.
//

import UIKit

class Meal {
    
    // MARK: Properties
    var name: String
    var photo: UIImage?
    var rating: Int
    
    // MARK: Initialization
    init?(name: String, photo: UIImage?, rating: Int) {
        
        // Error checking, should fail if there is no name or rating is negative.
        if (name.isEmpty || rating < 0) {
            return nil
        }
        
        // Initializing the meals stored properties.
        self.name = name
        self.photo = photo
        self.rating = rating
    }
    
}
