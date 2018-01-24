//
//  APIConstants.swift
//  GitRepositories
//
//  Created by Анюта on 24.01.18.
//  Copyright © 2018 Анюта. All rights reserved.
//

import Foundation

//Example of api link for list of repositories
//<https://api.github.com/repositories?since=364>; rel="next"

struct APIConstants {
   static let baseURL = "https://api.github.com"
   static let allRepositoriesURL = "/repositories"
}

