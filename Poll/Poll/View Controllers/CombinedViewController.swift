//
//  CombinedViewController.swift
//  Poll
//
//  Created by Linh Bouniol on 7/26/18.
//  Copyright © 2018 Linh Bouniol. All rights reserved.
//

import UIKit

class CombinedViewController: UIViewController, VoteControllerProtocol, VotingViewControllerDelegate {
    
    var voteController: VoteController?
    
    var resultsTableViewController: ResultsTableViewController!
    
    func voteWasAdded(vote: Vote) {
        resultsTableViewController.tableView.reloadData()
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let voteVC = segue.destination as? VotingViewController {
            voteVC.voteController = voteController
            voteVC.delegate = self
        }
        
        if let tableVC = segue.destination as? ResultsTableViewController {
            tableVC.voteController = voteController
            resultsTableViewController = tableVC
        }
    }
}
