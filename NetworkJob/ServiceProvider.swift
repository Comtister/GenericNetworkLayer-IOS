//
//  ServiceProvider.swift
//  NetworkJob
//
//  Created by Oguzhan Ozturk on 24.05.2021.
//

import Foundation

class ServiceProvider{
    
    
    class func getApod(date : String , completion : @escaping (Result<NasaApodResponseModel,Error>) -> Void){
        
        ServiceManager.shared.sendRequest(request: NasaApodRequestModel(date: date)) { (result) in
            completion(result)
        }
        
        
    }
    
}
