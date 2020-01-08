//
//  BaseViewController+Popup.swift
//  Imaginary National Park
//
//  Created by Marwen Doukh on 08.01.20.
//  Copyright © 2020 Marwen Doukh. All rights reserved.
//

import UIKit

extension BaseViewController {
    
    // alert with a one button
    func showAlertWithMessage(title: String, buttonTitle: String, message: String, completion: (() -> Void)? = nil) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: buttonTitle, style: .default, handler: { (_: UIAlertAction) in
            if let completion = completion {
                completion()
            }
        }))
        
        self.present(alert, animated: true, completion: nil)
    }

}

