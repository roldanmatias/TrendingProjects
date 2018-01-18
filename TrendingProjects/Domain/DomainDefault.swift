//
//  TrendingDomain.swift
//  TrendingProjects
//
//  Created by Matias Roldan on 13/1/18.
//  Copyright © 2018 Matias Roldan. All rights reserved.
//

class DomainDefault: Domain {

    let repository: Repository
    
    init(repository: Repository) {
        
        self.repository = repository
    }
    
    func getProjects(text: String?, projects: @escaping ([Project]?) -> Void) {
        
        repository.getProjects(text: text, projects: projects)
    }
}
