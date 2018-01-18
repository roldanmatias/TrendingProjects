//
//  TrendingDetailViewModel.swift
//  TrendingProjects
//
//  Created by Matias Roldan on 13/1/18.
//  Copyright © 2018 Matias Roldan. All rights reserved.
//

protocol TrendingDetailViewModel {
    
    var name: String {get}
    var projectDescription: String {get}
    var stars: String {get}
    var userName: String {get}
    var userImage: String {get}
    var forks: String {get}
    var readme: String {get}
}
