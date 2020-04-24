//
//  LoginViewController.swift
//  Corona
//
//  Created by Taof on 4/21/20.
//  Copyright © 2020 taoquynh. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func onLogin(_ sender: Any) {
        let graphicVC = GraphicViewController()
        let navigation = UINavigationController(rootViewController: graphicVC)
        navigation.modalPresentationStyle = .fullScreen
        self.present(navigation, animated: true, completion: nil)
    }
    
    @IBAction func goRegister(_ sender: Any) {
        
        let registerVC = RegisterViewController()
        registerVC.modalPresentationStyle = .fullScreen
        self.present(registerVC, animated: true, completion: nil)
    }
    
}
