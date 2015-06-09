//
//  ViewController.swift
//  FBFrameworkClientApp
//
//  Created by Julien Chaumond on 09/06/2015.
//  Copyright (c) 2015 Stupeflix. All rights reserved.
//

import UIKit
import FBFramework

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let vc = FrameworkViewController()
        presentViewController(vc, animated: true) {}
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

