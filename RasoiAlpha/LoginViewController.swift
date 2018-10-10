//
//  LoginViewController.swift
//  RasoiAlpha
//
//  Created by Atharva Dandekar on 10/9/18.
//  Copyright © 2018 BeyondLogic. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var loginPanelView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginPanelView.layer.cornerRadius = 4
        // Do any additional setup after loading the view.
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
