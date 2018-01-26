//
//  RepositoryesModel.swift
//  GitRepositories
//
//  Created by Анюта on 25.01.18.
//  Copyright © 2018 Анюта. All rights reserved.
//

import Foundation

class RepositoryesModel {

var repositoryes = [RepositoryModel]() //array with objects each of which is a model of one repositori

init (json: AnyObject) {
    if json is NSArray {
        let repositoriArray = json as! NSArray //convert type from json in NSArray
        var tempArr =  [RepositoryModel]()
            for dict in repositoriArray {
                let repo = RepositoryModel.init(json: dict as AnyObject) //return exemplar classes
                tempArr .append(repo)
            }
        repositoryes = tempArr // присваеваю пустому массиву массив с моделями

    }

}


}
