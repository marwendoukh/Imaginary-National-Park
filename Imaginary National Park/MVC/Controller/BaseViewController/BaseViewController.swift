//
//  BaseViewController.swift
//  Imaginary National Park
//
//  Created by Marwen Doukh on 08.01.20.
//  Copyright © 2020 Marwen Doukh. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    // black transparent view in the background of the loader
    let loaderBackground: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        
        return view
    }()
    
    // loader container view
    let loaderContainerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        
        return view
    }()
    
    // loader view
    let loader: UIActivityIndicatorView = {
        let loader = UIActivityIndicatorView()
        loader.translatesAutoresizingMaskIntoConstraints = false
        loader.color = .brown
        
        return loader
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set white background of the view controller
        view.backgroundColor = .white
    }
    

}
