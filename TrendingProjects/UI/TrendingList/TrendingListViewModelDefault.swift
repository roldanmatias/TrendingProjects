//
//  TrendingListViewModelDefault.swift
//  TrendingProjects
//
//  Created by Matias Roldan on 15/1/18.
//  Copyright © 2018 Matias Roldan. All rights reserved.
//
import ReactiveSwift

class TrendingListViewModelDefault: TrendingListViewModel {

    let title = "Github Trends"
    var projectsUpdated = MutableProperty(Double(0))
    
    private let domain:Domain
    private var projects: [Project]?

    init(domain: Domain) {
        
        self.domain = domain
    }
    
    func getProjectsCount() -> Int {
        
        return projects?.count ?? 0
    }
    
    func createCellViewModel(forIndex index: Int) -> TrendingCellViewModel? {
        
        guard let projects = projects, projects.count > index else {
            return nil
        }
        
        return TrendingCellViewModelDefault(withProject: projects[index])
    }
    
    func createDetailViewModel(forIndex index: Int) -> TrendingDetailViewModel? {

        guard let projects = projects, projects.count > index else {
            return nil
        }
        
        return TrendingDetailViewModelDefault(withProject: projects[index])
    }
    
    func search(text: String?) {
        
        domain.getProjects(text: text) { [weak self] projectList in
            self?.projects = projectList
            self?.projectsUpdated.value = drand48()
        }
    }
}
