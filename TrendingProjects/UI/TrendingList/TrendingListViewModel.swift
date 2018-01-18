//
//  TrendingListViewModel.swift
//  TrendingProjects
//
//  Created by Matias Roldan on 13/1/18.
//  Copyright © 2018 Matias Roldan. All rights reserved.
//
import ReactiveSwift

protocol TrendingListViewModel {
    
    var title: String {get}
    var projectsUpdated: MutableProperty<Double> {get}
    
    func search(text: String?)
    func getProjectsCount() -> Int
    func createCellViewModel(forIndex index: Int) -> TrendingCellViewModel?
    func createDetailViewModel(forIndex index: Int) -> TrendingDetailViewModel?
}
