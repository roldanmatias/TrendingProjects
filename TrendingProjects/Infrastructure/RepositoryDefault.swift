//
//  TrendingRepository.swift
//  TrendingProjects
//
//  Created by Matias Roldan on 13/1/18.
//  Copyright © 2018 Matias Roldan. All rights reserved.
//

import Foundation

class RepositoryDefault: Repository {
    
    private let apiService = APIService()
    private var createdDate: String
    
    init() {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        let lastWeekDate = Calendar.current.date(byAdding: .weekOfYear, value: -1, to: Date())!
        createdDate = dateFormatter.string(from: lastWeekDate)
    }
    
    func getProjects(text: String?, projects: @escaping ([Project]?) -> Void) {

        apiService.requestRepositories(text: text ?? "", created: createdDate, sort: "stars", order: "desc", completion: projects)
    }
}
