//
//  TrendingTableViewCell.swift
//  TrendingProjects
//
//  Created by Matias Roldan on 13/1/18.
//  Copyright © 2018 Matias Roldan. All rights reserved.
//

import UIKit

class TrendingTableViewCell: UITableViewCell {

    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var starsLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    var viewModel: TrendingCellViewModel! {
        didSet {
            nameLabel.text = viewModel.name
            descriptionLabel.text = viewModel.projectDescription
            starsLabel.text = viewModel.stars
        }
    }
}
