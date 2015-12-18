//
// Created by 周宁 on 15/12/18.
// Copyright (c) 2015 slyak. All rights reserved.
//

import UIKit

class PlayerCell: UITableViewCell {

    @IBOutlet weak var gameLabel : UILabel!
    
    @IBOutlet weak var nameLabel : UILabel!

    @IBOutlet weak var ratingImageView : UIImageView!
    
    var player : Player! {
        didSet {
            gameLabel.text = player.game
            nameLabel.text = player.name
            ratingImageView.image = imageForRating(player.rating)
        }
    }
    
    func imageForRating(rating: Int) -> UIImage {
        return UIImage(named: "\(rating)Stars")!
    }
}