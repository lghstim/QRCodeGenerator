//
//  ViewController.swift
//  Example
//
//  Created by Alexander Schuch on 25/01/15.
//  Copyright (c) 2015 Alexander Schuch. All rights reserved.
//

import UIKit
import QRCode

var id = "5"
var website = "asapserver.herokupp.com/api/social/";

class ViewController: UIViewController {

    @IBOutlet weak var imageViewSmall1: UIImageView!
    @IBOutlet weak var imageViewSmall2: UIImageView!
    @IBOutlet weak var imageViewSmall3: UIImageView!
    @IBOutlet weak var imageViewSmall4: UIImageView!
    @IBOutlet weak var imageViewMedium: UIImageView!
    @IBOutlet weak var imageViewLarge: UIImageView!


    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        // large
        // default
        imageViewLarge.image = {
            var qrCode = QRCode(website+id)!
            qrCode.size = self.imageViewLarge.bounds.size
            qrCode.errorCorrection = .High
            return qrCode.image
        }()
        
    }

}
