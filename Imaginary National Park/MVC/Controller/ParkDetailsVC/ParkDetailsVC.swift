//
//  ParkDetailsVC.swift
//  Imaginary National Park
//
//  Created by Marwen Doukh on 11.01.20.
//  Copyright © 2020 Marwen Doukh. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireImage

class ParkDetailsVC: BaseViewController {
    
    // UI
    
    // scrollview
    let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
    let contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    // ui elements
    let iconImageView: UIImageView = {
        let imageview = UIImageView()
        imageview.translatesAutoresizingMaskIntoConstraints = false
        return imageview
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        return label
    }()
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let bookableLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let callButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("ParkDetailsVC.button.call".localized, for: .normal)
        button.backgroundColor = .brown
        return button
    }()
    
    // id park (that was choosed by the user)
    var idPark: Int?
    // park
    var park: Park?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // autolayout of UI components
        setupViews()
        // call details WS
        parkDetailsWS(parkId: idPark)
    }
    
    func updateViewData() {
        // load park icon from URL (park.thumb)
        Alamofire.request(park?.thumb ?? "").responseImage { response in
            if let image = response.result.value {
                self.iconImageView.image = image
            }
        }
        //title
        titleLabel.text = park?.title
        // description
        descriptionLabel.text = park?.shortDescription
        // bookable
        bookableLabel.text = bookableText()
    }
    
    func bookableText() -> String {
        return "ParkDetailsVC.button.bookable".localized
            + (park?.startDate?.formatDate() ?? "")
            + " - "
            + (park?.endDate?.formatDate() ?? "")
    }
    
}
