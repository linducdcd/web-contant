//
//  ViewController.swift
//  web contant
//
//  Created by Lind Ucdcd on 6/16/19.
//  Copyright © 2019 Lind Ucdcd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var webView: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let url = URL(string: "https://www.ua-study.com"){
        
            let request = NSMutableURLRequest(url: url)
            
            let task = URLSession.shared.dataTask(with: request as URLRequest) {
                data, response, error in
                
                if error != nil {
                    print(error)
                } else {
                    if let unwrappedData = data {
                        
                        let dataString = NSString(data: unwrappedData, encoding: String.Encoding.utf8.rawValue)
                        print(dataString)
                        
                        
                    }
                    
                    
                }
                
                
                
                
            }
            
            task.resume()
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

