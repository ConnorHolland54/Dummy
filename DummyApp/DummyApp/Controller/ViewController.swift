//
//  ViewController.swift
//  DummyApp
//
//  Created by Victor Monteiro on 8/5/20.
//  Copyright © 2020 Connor Holland. All rights reserved.
//

import UIKit
import CryptoKit
import FirebaseUI

class ViewController: UIViewController {

    //MARK: - IBOutlet
    
    //MARK: - Variables
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //MARK: - IBActions
    @IBAction func signInWithAppleButtonTapped(_ sender: Any) {
        if let authUI = FUIAuth.defaultAuthUI() {
            authUI.providers = [FUIOAuth.appleAuthProvider()]
            authUI.delegate = self
        }
    }
    //MARK: Methods
   }

extension ViewController: FUIAuthDelegate {
    
    func authUI(_ authUI: FUIAuth, didSignInWith authDataResult: AuthDataResult?, error: Error?) {
        if let user = authDataResult?.user{
            print("\(user.displayName) \(user.email)")
            
        }
    }
}
