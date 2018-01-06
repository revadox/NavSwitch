//
//  ViewController.swift
//  NavSwitch
//
//  Created by darshan on 06/01/18.
//  Copyright © 2018 darshan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var label: UILabel!
    @IBOutlet var scrollView: UIScrollView!
    
    
    
    @IBAction func upButton(_ sender: UIButton) {
        
       scrollView.scrollsToTop = true
        
        scrollView.scrollRectToVisible(label.frame, animated: true)
        
    }
    
    
    
    @IBOutlet var indicator: UIActivityIndicatorView!
    
    
    @IBAction func `switch`(_ sender: UISwitch) {
        
        if sender.isOn == true {
            
            indicator.startAnimating()
        }
        else {
            
            indicator.stopAnimating()
        }
    }
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

