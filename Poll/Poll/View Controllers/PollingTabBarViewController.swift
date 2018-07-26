//
//  PollingTabBarViewController.swift
//  Poll
//
//  Created by Linh Bouniol on 7/26/18.
//  Copyright © 2018 Linh Bouniol. All rights reserved.
//

import UIKit

class PollingTabBarViewController: UITabBarController {

    // Passing VoteController to tab bar view controller
    let voteController = VoteController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        passVoteControllerToChildViewControllers()
    }

    func passVoteControllerToChildViewControllers() {
        for childVC in childViewControllers {
            if let vc = childVC as? VoteControllerProtocol {
                vc.voteController = voteController
            }
        }
    }
}
