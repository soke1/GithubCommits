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
//
// MARK: - Table View Data Source
//
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: CommitCell = tableView.dequeueReusableCell(withIdentifier: CommitCell.identifier,
                                                             for: indexPath) as! CommitCell
        
        let response = respondResults[indexPath.row]
        cell.setup(response: response)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return respondResults.count
    }
}
//
// MARK: - Table View Delegate
//
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 115.0
    }
}

