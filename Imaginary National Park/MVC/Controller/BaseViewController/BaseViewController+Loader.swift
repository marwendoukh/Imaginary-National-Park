//
//  BaseViewController+Loader.swift
//  Imaginary National Park
//
//  Created by Marwen Doukh on 12.01.20.
//  Copyright © 2020 Marwen Doukh. All rights reserved.
//

import UIKit

extension BaseViewController {
    
    func showLoader() {
        self.view.addSubview(loaderBackground)
         loaderBackground.addSubview(loaderContainerView)
        loaderContainerView.addSubview(loader)
        // constraints
        setupLoaderConstraints()
        loader.startAnimating()
    }
    
    func hideLoader() {
        loader.stopAnimating()
        loaderBackground.removeFromSuperview()
        loaderContainerView.removeFromSuperview()
        loader.removeFromSuperview()
        
    }
    
    fileprivate func setupLoaderConstraints() {
        // background
        loaderBackground.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
         loaderBackground.heightAnchor.constraint(equalTo: self.view.heightAnchor).isActive = true
         loaderBackground.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
         loaderBackground.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        // container
        loaderContainerView.widthAnchor.constraint(equalTo: loaderBackground.widthAnchor, multiplier: 0.2).isActive = true
        // ratio 1:1
        loaderContainerView.heightAnchor.constraint(equalTo: loaderContainerView.widthAnchor).isActive = true
        loaderContainerView.centerXAnchor.constraint(equalTo: loaderBackground.centerXAnchor).isActive = true
        loaderContainerView.centerYAnchor.constraint(equalTo: loaderBackground.centerYAnchor).isActive = true
        // loader
        loader.widthAnchor.constraint(equalTo: loaderContainerView.widthAnchor, multiplier: 0.3).isActive = true
        // ratio 1:1
        loader.heightAnchor.constraint(equalTo: loaderContainerView.widthAnchor).isActive = true
        loader.centerXAnchor.constraint(equalTo: loaderContainerView.centerXAnchor).isActive = true
        loader.centerYAnchor.constraint(equalTo: loaderContainerView.centerYAnchor).isActive = true
        
    }
}
