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
            contactView.delegate = self
            let contactViewButton = UIBarButtonItem(customView: contactView)
            navigationItem.leftBarButtonItems = [backButton,contactViewButton]
        }
        
        let callIcon = UIBarButtonItem(image: UIImage(named: "voice"), style: .plain, target: self, action: #selector(callClicked))
        let videoIcon = UIBarButtonItem(image: UIImage(named: "video"), style: .plain, target: self, action: #selector(videoCallClicked))
        navigationItem.rightBarButtonItems = [callIcon,videoIcon]
    }
    
    @objc func callClicked(){
        
    }
    
    @objc func videoCallClicked(){
    
    }
    
    @objc func backPressed(){
      
      
    }
}

extension ChatViewController: ContactHeaderDelegate {
    func contactClicked() {
        let detailVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier:"DetailVC")
        navigationController?.pushViewController(detailVC, animated: true)
    }
}
