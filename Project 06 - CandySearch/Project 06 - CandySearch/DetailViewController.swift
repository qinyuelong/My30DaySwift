//
//  DetailViewController.swift
//  Project 06 - CandySearch
//
//  Created by LinkE on 2018/11/16.
//  Copyright © 2018年 dev. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var detailDescriptionLabel: UILabel!
    @IBOutlet weak var candyImageView: UIImageView!
    
    var detailCandy: Candy? {
        didSet {
            configureView()
        }
    }

    func configureView() {
        if let detailCandy = detailCandy {
            if let detailDescriptionLabel = detailDescriptionLabel, let candyImageView = candyImageView {
                detailDescriptionLabel.text = detailCandy.name
                candyImageView.image = UIImage(named: detailCandy.name)
                title = detailCandy.category
            }
        }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }
    
    
}
