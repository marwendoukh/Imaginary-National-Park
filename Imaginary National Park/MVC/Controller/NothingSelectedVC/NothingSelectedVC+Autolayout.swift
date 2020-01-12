//
//  NothingSelectedVC+Autolayout.swift
//  Imaginary National Park
//
//  Created by Marwen Doukh on 12.01.20.
//  Copyright © 2020 Marwen Doukh. All rights reserved.
//

import UIKit

extension NothingSelectedVC {
    
    func setupViews() {
        self.view.addSubview(iconImageView)
        iconImageView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.5).isActive = true
        // image ratio 1:1
        iconImageView.heightAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
        iconImageView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        iconImageView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
    }
}
