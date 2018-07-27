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
    
    /*
     In order for all the view controllers in the tab bar to share the same data, we must share a *single* VoteController object with each child view controller, so they can work together. If we choose not to do this, and instead instanciate a new VoteController in each of the child view controllers, each one will have their own independant VoteController that isn't connected to any of the other ones, meaning no data (in this case Votes) will be shared.
 */
    func passVoteControllerToChildViewControllers() {
        for childVC in childViewControllers {
            if let vc = childVC as? VoteControllerProtocol {
                vc.voteController = voteController
            }
        }
    }
}
