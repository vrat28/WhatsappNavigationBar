//
//  ChatViewController.swift
//  WhatsappNavigation
//
//  Created by Varun Rathi on 21/04/20.
//  Copyright © 2020 Varun Rathi. All rights reserved.
//

import UIKit

class ChatViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpNavigation()
    }
    
    func setUpNavigation(){
        
        let backButton = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action:#selector(backPressed))
        if let contactView = Bundle.main.loadNibNamed("CustomContactHeader", owner: self, options: nil)?.first as? CustomContactHeader {
            let user = User(userName:"Chat User", image: "profilemale", isOnline: true)
             contactView.setUserDetails(user)
             let contactViewButton = UIBarButtonItem(customView: contactView)
             navigationItem.leftBarButtonItems = [backButton]
             navigationItem.titleView = contactView
             
         }
    }
    
    @objc func backPressed(){
      
      
    }
    
   
    
}
