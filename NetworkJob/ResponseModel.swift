//
//  ResponseModel.swift
//  NetworkJob
//
//  Created by Oguzhan Ozturk on 24.05.2021.
//

import Foundation

struct ResponseModel<T : Codable> : Codable{
    
    var rawData : Data?
    var json : String?{
        guard let rawData = rawData else {return nil}
        return String(data: rawData, encoding: .utf8)
    }
    
    var dataObject : T?
    
    init(data : Data) {
        rawData = data
        dataObject = try? JSONDecoder().decode(T.self, from: rawData!)
    }
    
   
    
}
