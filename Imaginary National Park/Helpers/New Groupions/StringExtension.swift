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
}

