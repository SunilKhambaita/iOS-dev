//
//  RatingControl.swift
//  FoodTracker
//
//  Created by Sunil M Khambaita on 2017-07-04.
//  Copyright © 2017 Sunil. All rights reserved.
//

import UIKit

class RatingControl: UIStackView {
    
    // MARK: Initialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpButtons()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setUpButtons()
    }
    
    // MARK: Private Methods
    
    private func setUpButtons() {
        
        // Creating the button
        let button = UIButton()
        button.backgroundColor = UIColor.blue
        
        // Creating button constraints
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
        button.widthAnchor.constraint(equalToConstant: 44.0).isActive = true
        
        // Adding the button to the stack
        addArrangedSubview(button)
        
    }
}
