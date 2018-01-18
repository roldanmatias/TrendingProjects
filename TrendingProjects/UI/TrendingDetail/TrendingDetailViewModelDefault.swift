//
//  TrendingDetailViewModelDefault.swift
//  TrendingProjects
//
//  Created by Matias Roldan on 1/17/18.
//  Copyright © 2018 Matias Roldan. All rights reserved.
//

class TrendingDetailViewModelDefault: TrendingDetailViewModel {

    private let project: Project
    
    var name: String {
        return project.name ?? ""
    }
    
    var projectDescription: String {
        return project.projectDescription ?? ""
    }
    
    var stars: String {
        return "\(project.stars ?? 0) Stars"
    }
    
    var userName: String {
        return project.owner?.login ?? ""
    }
    
    var userImage: String {
        return project.owner?.avatar_url ?? ""
    }
    
    var forks: String {
        return "\(project.forks ?? 0) Forks"
    }
    
    var readme: String {
        return project.readme ?? ""
    }
    
    init(withProject project: Project) {
        self.project = project
    }
}
