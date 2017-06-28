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
        
        print("frame 1 did load")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("Frame 1 did disappear")
    }
    
}
