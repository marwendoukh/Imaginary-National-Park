//
//  ParkTableviewCell+Autolayout.swift
//  Imaginary National Park
//
//  Created by Marwen Doukh on 11.01.20.
//  Copyright © 2020 Marwen Doukh. All rights reserved.
//

import UIKit

extension ParkTableviewCell {
    
    func setupViews() {
        
        // icon
        self.addSubview(iconImageView)
        iconImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20).isActive = true
        iconImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        iconImageView.widthAnchor.constraint(equalToConstant: 50).isActive = true
        // make ratio 1:1 (width = height)
        iconImageView.heightAnchor.constraint(equalTo: iconImageView.widthAnchor).isActive = true
        
        // price
        self.addSubview(priceLabel)
        priceLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        priceLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 20).isActive = true
        // make hugging priority high , in order to make it stick to the left of the screen instead of to titleLabel
        priceLabel.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        
        // title
        self.addSubview(titleLabel)
        titleLabel.topAnchor.constraint(equalTo: priceLabel.topAnchor).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: iconImageView.trailingAnchor, constant: 10).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: priceLabel.leadingAnchor).isActive = true
        
        // short description
        self.addSubview(shortDescriptionLabel)
        shortDescriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10).isActive = true
        shortDescriptionLabel.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor).isActive = true
        shortDescriptionLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        
        // available till
        self.addSubview(availableTillLabel)
        availableTillLabel.topAnchor.constraint(equalTo: shortDescriptionLabel.bottomAnchor, constant: 10).isActive = true
        availableTillLabel.leadingAnchor.constraint(equalTo: shortDescriptionLabel.leadingAnchor).isActive = true
        availableTillLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10).isActive = true
    }
}
