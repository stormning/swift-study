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
        let cell = tableView.dequeueReusableCellWithIdentifier("PlayerCell", forIndexPath: indexPath)
        let player = players[indexPath.row] as Player
        cell.textLabel?.text = player.name
        cell.detailTextLabel?.text = player.game
        return cell
    }

}
