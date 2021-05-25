//
//  ServiceManager.swift
//  NetworkJob
//
//  Created by Oguzhan Ozturk on 24.05.2021.
//

import Foundation

class ServiceManager{
    
    
    static let shared : ServiceManager = ServiceManager()
    
    func sendRequest<T : Codable>(request : RequestModel , completion : @escaping (Result<T,Error>) -> Void) {
        
        guard request.requestModel() != nil else { print("Request Error") ; return }
        
        URLSession.shared.dataTask(with: request.requestModel()!) { (data, response, error) in
            
            var responseModel = ResponseModel<T>(data: data!)
            print(responseModel.dataObject)
            
        }.resume()
        
    }
    
}
