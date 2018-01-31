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

init (json: Any) {
	//check json is it Array
	if let repositoryArray = json as? Array<Any> {
		
        var tempArr =  [RepositoryModel]()
		for dict in repositoryArray {
			let repo = RepositoryModel.init(json: dict) //return exemplar classes
                tempArr .append(repo)
		}
        self.repositoryes = tempArr // setting array with models to our property
    }
}


}
