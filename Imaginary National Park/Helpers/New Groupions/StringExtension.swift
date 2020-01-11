//
//  StringExtension.swift
//  Imaginary National Park
//
//  Created by Marwen Doukh on 08.01.20.
//  Copyright © 2020 Marwen Doukh. All rights reserved.
//

import Foundation

extension String {
    
    var localized: String {
        
        return NSLocalizedString(self, comment: "")
    }
    
    // convert string (that contains a date) to this format 01/01/2020
    func formatDate() -> String {
        return ""
    }
}

