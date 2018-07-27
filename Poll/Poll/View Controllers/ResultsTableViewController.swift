//
//  ResultsTableViewController.swift
//  Poll
//
//  Created by Linh Bouniol on 7/26/18.
//  Copyright © 2018 Linh Bouniol. All rights reserved.
//

import UIKit

class ResultsTableViewController: UITableViewController, VoteControllerProtocol {

    var voteController: VoteController?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
    }
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return voteController?.votes.count ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "VoteCell", for: indexPath) as! VoteTableViewCell
        
        let vote = voteController?.votes[indexPath.row]
        cell.nameLabel?.text = vote?.name
        cell.responseLabel?.text = vote?.response
        
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .medium
        
        cell.dateLabel?.text = formatter.string(from: vote!.timestamp)

        return cell
    }
}
