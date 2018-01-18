//
//  TrendingCellViewModelDefault.swift
//  TrendingProjects
//
//  Created by Matias Roldan on 15/1/18.
//  Copyright © 2018 Matias Roldan. All rights reserved.
//

class TrendingCellViewModelDefault: TrendingCellViewModel {
    
    private let project: Project
    
    var name: String {
        return project.name ?? ""
    }
    
    var projectDescription: String {
        return project.projectDescription ?? ""
    }
    
    var stars: String {
        return "\(project.stars ?? 0)"
    }
    
    init(withProject project: Project) {
        self.project = project
    }
}
