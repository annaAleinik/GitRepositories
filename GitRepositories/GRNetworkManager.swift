//
//  GRNetworkManager.swift
//  GitRepositories
//
//  Created by Анюта on 24.01.18.
//  Copyright © 2018 Анюта. All rights reserved.
//

import Foundation
import Alamofire

class NetworkManager {
    
    static let networkManager = NetworkManager()
    
    func getRepositories(completion: @escaping (_ repos: [RepositoryModel]) -> Void) {
        
        let finishURLString = APIConstants.baseURL .appending(APIConstants.allRepositoriesURL)        
        let url = URL(string: finishURLString)
        
        let session = URLSession.shared
        
        session.dataTask(with: url!) { (data, response, error) in
            if let response = response {
                print(response)
            }
            
            guard let data = data else {return}
            print(data)
            
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                print(json)
                let modelrepo = RepositoryesModel.init(json: json)
                completion(modelrepo.repositoryes)
                
                
            } catch {
                print(error)
            }
            
            }.resume()
        
    }
}
