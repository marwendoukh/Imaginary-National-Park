//
//  NothingSelectedVC.swift
//  Imaginary National Park
//
//  Created by Marwen Doukh on 12.01.20.
//  Copyright © 2020 Marwen Doukh. All rights reserved.
//

import UIKit

class NothingSelectedVC: BaseViewController {
    
    let iconImageView: UIImageView = {
        let imageview = UIImageView()
        imageview.translatesAutoresizingMaskIntoConstraints = false
        imageview.image = UIImage(named: AssetsConstants.parkLogo)
        // fit image size
        imageview.contentMode = .scaleAspectFit
        return imageview
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // ui autolayout
        setupViews()
    }
}
