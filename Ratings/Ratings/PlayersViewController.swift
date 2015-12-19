//
//  PlayersViewController.swift
//  Ratings
//
//  Created by 周宁 on 15/12/17.
//  Copyright © 2015年 slyak. All rights reserved.
//

import UIKit

class PlayersViewController: UITableViewController {

    var players: [Player] = playersData

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return players.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("PlayerCell", forIndexPath: indexPath) as! PlayerCell
        cell.player = players[indexPath.row] as Player
        return cell
    }

    @IBAction func cancelToPlayersViewController(segue: UIStoryboardSegue) {
        dismissViewControllerAnimated(true, completion: nil)
    }

    @IBAction func savePlayerDetail(segue: UIStoryboardSegue) {
        if let playerDetailsViewController = segue.sourceViewController as? PlayerDetailsViewController {
            if let player = playerDetailsViewController.player {
                players.append(player)
                //update the tableView
                let indexPath = NSIndexPath(forRow: players.count - 1, inSection: 0)
                tableView.insertRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
            }
        }
    }
}
