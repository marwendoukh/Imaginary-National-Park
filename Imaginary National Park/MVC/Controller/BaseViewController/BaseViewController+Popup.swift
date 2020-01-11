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
    
    // alert with two buttons
    func showAlertWithTwoButtons(title: String, button1Title: String, button2Title: String, message: String, completionButton: @escaping (Int) -> Void) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: button1Title, style: .default, handler: { (_: UIAlertAction) in
            completionButton(1)
        }))
        
        alert.addAction(UIAlertAction(title: button2Title, style: .default, handler: { (_: UIAlertAction) in
            completionButton(2)
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
    
}

