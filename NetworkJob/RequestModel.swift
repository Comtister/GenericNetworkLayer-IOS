//
//  RequestModel.swift
//  NetworkJob
//
//  Created by Oguzhan Ozturk on 24.05.2021.
//

import Foundation

enum RequestHttpMethod : String{
    case GET = "GET"
    case POST = "POST"
}

class RequestModel{
    
   
    
    var baseURL : String{
        return ""
    }
    
    var path : String{
        return ""
    }
    
    var queryParameters : [String : Any]{
        return [:]
    }
    
    var method : RequestHttpMethod{
        return body.isEmpty ? RequestHttpMethod.GET : RequestHttpMethod.POST
    }
    
    var body : [String : Any]{
        return [:]
    }
    
   
    func requestModel() -> URLRequest?{
        
        var requestUrl = URL(string: baseURL)
        requestUrl?.appendPathComponent(path)
        
        guard requestUrl != nil else { print("Wrong url") ; return nil }
        
        var urlComponents = URLComponents(url: requestUrl!, resolvingAgainstBaseURL: false)
        
        urlComponents?.queryItems = queryParameters.map({ (key,value) -> URLQueryItem in
            URLQueryItem(name: key, value: value as? String)
        })
        
        var urlRequest = URLRequest(url: (urlComponents?.url)!)
        
        if method == RequestHttpMethod.POST{
            
            do{
                urlRequest.httpBody = try JSONSerialization.data(withJSONObject: body, options: .prettyPrinted)
            }catch let error{
                print("httpBody Parse error \(error)")
            }
            
            
        }
        return urlRequest
    }
    
}
