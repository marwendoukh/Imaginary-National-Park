//
//  ParksType.swift
//  Imaginary National Park
//
//  Created by Marwen Doukh on 11.01.20.
//  Copyright © 2020 Marwen Doukh. All rights reserved.
//

import Foundation

enum ParksType {
    
    case all
    case top5
    
    static func initFromInt(_ int: Int) -> ParksType {
        switch int {
        case 0:
            return .all
        case 1:
            return .top5
        default:
            return .all
        }
    }
    
    // get the title of the park type
    var title: String {
        switch self {
        case .all:
            return "ParksListVC.segmentedControl.all".localized
        case .top5:
            return "ParksListVC.segmentedControl.top5".localized
        }
    }
    
    // get the url of the WS that contains each park type list
    var wsUrl: String {
        switch self {
        case .all:
            return Route.parksListAllUrl
        case .top5:
            return Route.parksListTop5Url
        }
    }
    
    // get all parks titles
    static var allTitles: [String] {
        return [ParksType.all.title, ParksType.top5.title]
    }
}
