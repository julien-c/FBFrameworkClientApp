//
//  FrameworkViewController.swift
//  FBFrameworkClientApp
//
//  Created by Julien Chaumond on 09/06/2015.
//  Copyright (c) 2015 Stupeflix. All rights reserved.
//

import UIKit
import FBSDKLoginKit

public class FrameworkViewController: UIViewController, FBSDKLoginButtonDelegate {

    var loginButton: FBSDKLoginButton?
    
    override public func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let loginButton = FBSDKLoginButton()
        loginButton.delegate = self
        loginButton.center = view.center
        view.addSubview(loginButton)
        self.loginButton = loginButton
    }

    
    
    
    // MARK: - FBSDKLoginButtonDelegate
    
    public func loginButton(loginButton: FBSDKLoginButton!, didCompleteWithResult result: FBSDKLoginManagerLoginResult!, error: NSError!) {
        println("Coming back from Facebook signin")
        println("Error: \(error)")
        println("result: \(result) isCancelled: \(result.isCancelled) token: \(result.token)")
        println("declinedPermissions: \(result.declinedPermissions) grantedPermissions: \(result.grantedPermissions)")
    }
    
    public func loginButtonDidLogOut(loginButton: FBSDKLoginButton!) {
        println("Facebook logout")
    }
    
}
