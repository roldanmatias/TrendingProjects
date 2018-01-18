//
//  Domain.swift
//  TrendingProjects
//
//  Created by Matias Roldan on 13/1/18.
//  Copyright © 2018 Matias Roldan. All rights reserved.
//

protocol Domain {
    
    func getProjects(text: String?, projects: @escaping ([Project]?) -> Void)
}
