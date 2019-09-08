//
//  ViewController.swift
//  GithubCommits
//
//  Created by Soriyany keo on 9/8/19.
//  Copyright © 2019 Soriyany keo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //
    // MARK: - IBOutlets
    //
    @IBOutlet weak var tableview: UITableView!
    
    //
    // MARK: - Constants
    //
    let queryService = QueryService()
    
    //
    // MARK: - Variables And Properties
    //
    var respondResults: [Response] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

