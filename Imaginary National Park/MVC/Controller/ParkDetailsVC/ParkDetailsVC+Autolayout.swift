//
//  ParkDetailsVC+Autolayout.swift
//  Imaginary National Park
//
//  Created by Marwen Doukh on 11.01.20.
//  Copyright © 2020 Marwen Doukh. All rights reserved.
//

import UIKit

extension ParkDetailsVC {
    
    func setupViews() {
        
        // scrollview
        self.view.addSubview(scrollView)
        scrollView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        scrollView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        // contentview
        scrollView.addSubview(contentView)
        contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
        contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
        contentView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
        contentView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        // image
        contentView.addSubview(iconImageView)
        iconImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 30).isActive = true
        iconImageView.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.8).isActive = true
        // icon ratio
        iconImageView.heightAnchor.constraint(equalTo: iconImageView.widthAnchor, multiplier: 0.7).isActive = true
        iconImageView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        // title
        contentView.addSubview(titleLabel)
        titleLabel.topAnchor.constraint(equalTo: iconImageView.bottomAnchor, constant: 30).isActive = true
        titleLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        titleLabel.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.8).isActive = true
        // description
        contentView.addSubview(descriptionLabel)
        descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 30).isActive = true
        descriptionLabel.centerXAnchor.constraint(equalTo: titleLabel.centerXAnchor).isActive = true
        descriptionLabel.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.8).isActive = true
        // bookable
        contentView.addSubview(bookableLabel)
        bookableLabel.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 30).isActive = true
        bookableLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 30).isActive = true
        // call button
        contentView.addSubview(callButton)
        callButton.topAnchor.constraint(equalTo: bookableLabel.bottomAnchor, constant: 40).isActive = true
        callButton.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.8).isActive = true
        callButton.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        callButton.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -30).isActive = true
    }
}
