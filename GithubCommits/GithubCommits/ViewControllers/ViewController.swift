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
    internal func loadCommits() {
        queryService.getResults(searchTerm: "") { [weak self] results, errorMessage in
            UIApplication.shared.isNetworkActivityIndicatorVisible = false
            DispatchQueue.main.async {
                if let results = results {
                    self?.respondResults = results
                    self?.tableview.reloadData()
                }
            }
        }
    }
}


