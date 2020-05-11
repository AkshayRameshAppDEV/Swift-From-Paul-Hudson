//
//  ViewController.swift
//  Storm Viewer
//
//  Created by Akshay Ramesh on 5/10/20.
//  Copyright © 2020 Akshay Ramesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var pictures = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fileManager = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fileManager.contentsOfDirectory(atPath: path)
        
        for item in items{
            if item.hasPrefix("nssl"){
                pictures.append(item)
            }
        }
        print(pictures)
    }


}

