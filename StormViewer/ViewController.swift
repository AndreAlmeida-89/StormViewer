//
//  ViewController.swift
//  StormViewer
//
//  Created by Andre Almeida on 29/08/21.
//

import UIKit

class ViewController: UITableViewController {
    
    var pictures: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.hasPrefix("nssl"){
                pictures.append(item)
            }
                
        }
        print(pictures)
    }


}

