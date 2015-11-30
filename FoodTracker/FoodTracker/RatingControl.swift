//
//  RatingControl.swift
//  FoodTracker
//
//  Created by 周宁 on 15/11/27.
//  Copyright © 2015年 slyak. All rights reserved.
//

import UIKit

class RatingControl: UIView {

    //MARK: properties
    var rating = 0 {
        didSet {
            setNeedsLayout()
        }
    }
    var ratingButtons = [UIButton]()
    let stars = 5
    let spacing = 5

    // MARK: Initialization

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        let filledStarImage = UIImage(named: "filledStar")
        let emptyStarImage = UIImage(named: "emptyStar")
        for _ in 0 ..< stars {
            let button = UIButton()
            button.setImage(emptyStarImage, forState: .Normal)
            button.setImage(filledStarImage, forState: .Selected)
            button.setImage(emptyStarImage, forState: [.Highlighted, .Selected])

            button.adjustsImageWhenHighlighted = false

            button.addTarget(self, action: "ratingButtonTapped:", forControlEvents: .TouchDown)
            ratingButtons += [button]
            addSubview(button)
        }

        updateButtonSelectionStates()

    }

    override func layoutSubviews() {
        // Set the button's width and height to a square the size of the frame's height.
        let buttonSize = Int(frame.size.height)
        var buttonFrame = CGRect(x: 0, y: 0, width: buttonSize, height: buttonSize)

        // Offset each button's origin by the length of the button plus some spacing.
        for (index, button) in ratingButtons.enumerate() {
            buttonFrame.origin.x = CGFloat(index * (buttonSize + 5))
            button.frame = buttonFrame
        }
    }

    override func intrinsicContentSize() -> CGSize {
        let buttonSize = Int(frame.size.height)
        let width = (buttonSize + spacing) * stars

        return CGSize(width: width, height: buttonSize)
    }

    // MARK: Button Action
    func ratingButtonTapped(button: UIButton) {
        rating = ratingButtons.indexOf(button)! + 1
        updateButtonSelectionStates()
    }

    func updateButtonSelectionStates() {
        for (index, button) in ratingButtons.enumerate() {
            button.selected = index < rating
        }

    }

}
