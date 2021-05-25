//
//  ViewController.swift
//  NetworkJob
//
//  Created by Oguzhan Ozturk on 20.05.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        ServiceProvider.getApod(date: "2021-05-24") { (result) in
            do{
                let object = try result.get()
                print(object)
                
            }catch{
                
            }
            
           
        }
        
        /*
        var url = URL(string: "https://api.nasa.gov")!
        url.appendPathComponent("planetary")
        url.appendPathComponent("apod")
        
        var urlC = URLComponents(url: url, resolvingAgainstBaseURL: false)
        urlC?.queryItems = [URLQueryItem(name: "api_key", value: "DEMO_KEY")]
        
        var request = URLRequest(url: (urlC?.url)!)
        print(request.httpMethod)
        print(request.httpBody)
        request.httpMethod = "POST"
        print(request.url)
        
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let error = error{
                print("error")
                return
            }
            
            print(data)
            print(String(data: data!, encoding: .utf8))
            
        }.resume()
        */
    }

  
}

