//
//  CommitCell.swift
//  GithubCommits
//
//  Created by Soriyany keo on 9/8/19.
//  Copyright © 2019 Soriyany keo. All rights reserved.
//

import UIKit
class CommitCell: UITableViewCell {
    //
    // MARK: - Class Constants
    //
    static let identifier = "CommitCell"
    
    //
    // MARK: - IBOutlets
    //
    @IBOutlet weak var authorNameLbl: UILabel!
    @IBOutlet weak var shaLbl: UILabel!
    @IBOutlet weak var messageLbl: UILabel!
    
    func setup(response:Response){
        authorNameLbl.text = response.commit.author.name
        shaLbl.text = response.sha
        messageLbl.text = response.commit.message
    }
}
