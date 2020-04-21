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
    @IBOutlet var lblPresence:UILabel!
    var delegate:ContactHeaderDelegate?
    
    
    override class func awakeFromNib() {
        super.awakeFromNib()
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(contactTapped))
        self.addGestureRecognizer(tapGesture)
    }
    
    @objc func contactTapped() {
        
    }
    
}
