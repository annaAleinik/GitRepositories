//
//  RepositoryModel.swift
//  GitRepositories
//
//  Created by Анюта on 25.01.18.
//  Copyright © 2018 Анюта. All rights reserved.
//

import Foundation
import Alamofire

class RepositoryModel {

    var login   : String?
    var id      : Int?
    var url     : String?
	
    init(json : Any) {
        if let dict = json as? NSDictionary {
            self.login  = dict.value(forKey: "login") as? String
            self.id     = dict.value(forKey: "id") as? Int
            self.url    = dict.value(forKey: "url") as? String
        }
     
     }
}
