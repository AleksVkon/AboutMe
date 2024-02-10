//
//  WelcomeViewController.swift
//  AboutMe
//
//  Created by Aleksey Konchyts on 9.02.24.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomUserNameLable: UILabel!
    
    var welcomeUserName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomUserNameLable.text = welcomeUserName
    }
    
}
