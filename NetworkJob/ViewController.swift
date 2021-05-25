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
        
      
    }

  
}

