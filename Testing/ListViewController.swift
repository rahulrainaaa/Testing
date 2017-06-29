//
//  ListViewController.swift
//  Testing
//
//  Created by osxuser on 6/29/17.
//  Copyright © 2017 osxuser. All rights reserved.
//

import UIKit

class ListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, MyProtocol {
    
    var position = -1
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func backButtonEvent(_ sender: UIBarButtonItem) {
    
        
        print("hello")
        self.dismiss(animated: true, completion: nil)
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! MyTableViewCell
        
        cell.funcRegister(refer: self)
        cell.tag = indexPath.row
        
        if(position == indexPath.row) {
            
            cell.viewHeight.constant = 41.0
            cell.myView.isHidden = false
            
        } else {
            
            cell.viewHeight.constant = 0.0
            cell.myView.isHidden = true
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if(position == indexPath.row) {
            return 104.0
        } else {
            return 60.0
        }
        
    }
    
    func myCallback(position: Int) {
        
        if(self.position == position){
            self.position = -1
        } else {
            self.position = position
        }
        tableView.reloadData()
    }
    
}
