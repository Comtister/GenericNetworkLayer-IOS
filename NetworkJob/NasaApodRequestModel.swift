//
//  NasaApodRequestModel.swift
//  NetworkJob
//
//  Created by Oguzhan Ozturk on 24.05.2021.
//

import Foundation

class NasaApodRequestModel : RequestModel{
    
    private var date : String
    
    override var baseURL: String{
        return "https://api.nasa.gov"
    }
    
    override var path: String{
        return "planetary/apod"
    }
    
    init(date : String) {
        self.date = date
    }
    
    override var queryParameters: [String : Any]{
        return ["date" : date , "api_key" : "DEMO_KEY"]
    }
    
   
    
}
