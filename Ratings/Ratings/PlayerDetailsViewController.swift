//
//  PlayerDetailsViewController.swift
//  Ratings
//
//  Created by 周宁 on 15/12/18.
//  Copyright © 2015年 slyak. All rights reserved.
//

import UIKit

class PlayerDetailsViewController: UITableViewController {

    var game: String = "Chess" {
        didSet {
            detailLabel.text? = game
        }
    }

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var detailLabel: UILabel!

    var player: Player?

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.section == 0 {
            nameTextField.becomeFirstResponder()
        }
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "SavePlayerDetail" {
            player = Player(name: nameTextField.text!, game: game, rating: 1)
        }
        if segue.identifier == "PickGame" {
            if let gamePickerController = segue.destinationViewController as? GamePickerViewController{
                gamePickerController.selectedGame = game
            }
        }
    }

    @IBAction func unwindWithSelectedGame(segue: UIStoryboardSegue) {
        if let gamePickerViewController = segue.sourceViewController as? GamePickerViewController, selectedGame = gamePickerViewController.selectedGame {
            game = selectedGame
        }
    }
}
