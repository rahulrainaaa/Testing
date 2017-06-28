//
//  ViewController.swift
//  Testing
//
//  Created by osxuser on 6/18/17.
//  Copyright © 2017 osxuser. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let nsmd = NSMutableDictionary()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        nsmd.setValue("my full name", forKey: "name")
        
        print("\(nsmd)")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



}

