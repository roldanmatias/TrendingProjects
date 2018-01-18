//
//  TrendingDetailViewController.swift
//  TrendingProjects
//
//  Created by Matias Roldan on 13/1/18.
//  Copyright © 2018 Matias Roldan. All rights reserved.
//

import UIKit
import Kingfisher

class TrendingDetailViewController: UIViewController {

    var viewModel: TrendingDetailViewModel?
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var projectDescription: UILabel!
    @IBOutlet weak var stars: UILabel!
    @IBOutlet weak var forks: UILabel!
    @IBOutlet weak var readme: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let viewModel = viewModel {
            
            title = viewModel.name
            userName.text = viewModel.userName
            projectDescription.text = viewModel.projectDescription
            stars.text = viewModel.stars
            forks.text = viewModel.forks
            readme.text = viewModel.readme
            
            if let avatarUrl = URL(string: viewModel.userImage) {
                profileImage.kf.setImage(with: ImageResource(downloadURL: avatarUrl))
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
