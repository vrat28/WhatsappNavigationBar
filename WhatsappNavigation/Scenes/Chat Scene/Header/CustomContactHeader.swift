//
//  CustomContactHeader.swift
//  WhatsappNavigation
//
//  Created by Varun Rathi on 21/04/20.
//  Copyright © 2020 Varun Rathi. All rights reserved.
//

import UIKit

protocol ContactHeaderDelegate {
    func contactClicked()
}


class CustomContactHeader:UIView {
    
    @IBOutlet var imageView:UIImageView!
    @IBOutlet var lblUserName:UILabel!
    @IBOutlet var lblPresence:UILabel!
    var delegate:ContactHeaderDelegate?
    
    
    override  func awakeFromNib() {
        super.awakeFromNib()
        lblPresence.textColor = UIColor.lightGray
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(contactTapped))
        addGestureRecognizer(tapGesture)
    }
    
    func setUserDetails(_ user:User){
        lblUserName.text = user.userName
        lblPresence.text = user.isOnline ? "Online" : "Offline"
        if let image = user.image {
            imageView.image = UIImage(named: image)
        }
        
    }
    
    @objc func contactTapped() {
        delegate?.contactClicked()
    }
    
}
