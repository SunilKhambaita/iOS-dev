//
//  RatingControl.swift
//  FoodTracker
//
//  Created by Sunil M Khambaita on 2017-07-04.
//  Copyright © 2017 Sunil. All rights reserved.
//

import UIKit

@IBDesignable class RatingControl: UIStackView {
    
    // MARK: Properties
    private var ratingButtons = [UIButton]()
    
    // MARK: Initialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpButtons()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setUpButtons()
    }
    
    // MARK: Button Action
    
    func ratingButtonTapped(button: UIButton) {
        print("Button pressed 👍🏽")
    }
    
    // MARK: Private Methods
    
    private func setUpButtons() {
        
        for _ in 0..<5 {
            
            // Creating the button
            let button = UIButton()
            button.backgroundColor = UIColor.blue
            
            // Creating button constraints
            button.translatesAutoresizingMaskIntoConstraints = false
            button.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
            button.widthAnchor.constraint(equalToConstant: 44.0).isActive = true
            
            // Setting up the button action
            button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(button:)), for: .touchUpInside)
            
            // Adding the button to the stack
            addArrangedSubview(button)
        }
    }
}
