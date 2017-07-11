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
        
        // Error checking, should fail if there is no name.
        guard !name.isEmpty else {
            return nil
        }
        
        // Error checking, should fail if rating is negative or greater than 5.
        guard (rating >= 0) && (rating <= 5) else {
            return nil
        }
        
        // If all passed, initializing the meals stored properties.
        self.name = name
        self.photo = photo
        self.rating = rating
    }
    
}
