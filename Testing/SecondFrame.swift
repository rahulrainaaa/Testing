//
//  SecondFrame.swift
//  Testing
//
//  Created by osxuser on 6/29/17.
//  Copyright © 2017 osxuser. All rights reserved.
//

import UIKit

class SecondFrame: UIViewController {
    
    override func viewDidLoad() {
        
        print("frame 2 did load")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("Frame 2 will disappear")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("frame 2 will appear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("Frame 2 did disappear")
    }
    
}
