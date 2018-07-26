//
//  VoteController.swift
//  Poll
//
//  Created by Linh Bouniol on 7/26/18.
//  Copyright © 2018 Linh Bouniol. All rights reserved.
//

import Foundation

class VoteController {
    
    private(set) var votes: [Vote] = []
    
    func create(name: String, response: String) -> Vote {
        let vote = Vote(name: name, response: response)
        votes.append(vote)
        return vote
    }
}
