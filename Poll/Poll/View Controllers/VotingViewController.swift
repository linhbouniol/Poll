//
//  VotingViewController.swift
//  Poll
//
//  Created by Linh Bouniol on 7/26/18.
//  Copyright © 2018 Linh Bouniol. All rights reserved.
//

import UIKit

protocol VotingViewControllerDelegate: class {
    func voteWasAdded(vote: Vote)
}

class VotingViewController: UIViewController, VoteControllerProtocol {
    
    var voteController: VoteController?
    weak var delegate: VotingViewControllerDelegate?

    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var responseTextField: UITextField!
    
    @IBAction func submit(_ sender: Any) {
        guard let name = nameTextField.text, let response = responseTextField.text else { return }
        
        guard let vote = voteController?.create(name: name, response: response) else { return }
        
        delegate?.voteWasAdded(vote: vote)
    }
}
