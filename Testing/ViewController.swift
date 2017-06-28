//
//  ViewController.swift
//  Testing
//
//  Created by osxuser on 6/18/17.
//  Copyright © 2017 osxuser. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var innerView: UIView!
    @IBOutlet weak var container: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.contentSize.height = innerView.frame.height
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func clickButton(_ sender: UIButton, forEvent event: UIEvent) {
    
        var news:UIViewController?
      
        switch sender.tag {
        case 1:
            
            news = self.storyboard?.instantiateViewController(withIdentifier: "frame1") as! FirstFrameController
    
            break;
        case 2:
            
            news = self.storyboard?.instantiateViewController(withIdentifier: "frame2") as! SecondFrame
            break;
            
        default:
            
            break;
        }
        
        news?.view.frame = container.bounds
        container.addSubview((news?.view)!)
        addChildViewController(news!)
        news?.didMove(toParentViewController: self)
        
    
    }


}

