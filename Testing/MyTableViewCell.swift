//
//  MyTableViewCell.swift
//  Testing
//
//  Created by osxuser on 6/29/17.
//  Copyright © 2017 osxuser. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    
    var refer:MyProtocol!
    
    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var viewHeight: NSLayoutConstraint!
   
    override func awakeFromNib() {
        print("awake from nib...")
        
        //viewHeight.constant = 41
        
    }
    @IBAction func arrowEvent(_ sender: UIButton, forEvent event: UIEvent) {
    
        refer.myCallback(position: tag)
        
//        if(viewHeight.constant == 41.0){
//            viewHeight.constant = 0.0
//        } else {
//            viewHeight.constant = 41.0
//        }
//        self.updateConstraints()
        
    }
    
    
    public func funcRegister(refer:MyProtocol) {
        
        self.refer = refer
    
        
        
    }
    
}
