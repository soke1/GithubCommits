//
//  Commit.swift
//  GithubCommits
//
//  Created by Soriyany keo on 9/8/19.
//  Copyright © 2019 Soriyany keo. All rights reserved.
//

import Foundation
struct Commit: Codable { // or Decodable
    let message:String
    let author:Author
}
