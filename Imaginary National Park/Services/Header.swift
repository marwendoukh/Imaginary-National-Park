//
//  Header.swift
//  Imaginary National Park
//
//  Created by Marwen Doukh on 08.01.20.
//  Copyright © 2020 Marwen Doukh. All rights reserved.
//

import Foundation
import Alamofire

// this struct contains the WS required header
struct Header {
    static let jsonHeader: HTTPHeaders = [
        "Accept": "application/json"
    ]
}
