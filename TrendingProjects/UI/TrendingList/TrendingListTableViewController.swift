//
//  TrendingListTableViewController.swift
//  TrendingProjects
//
//  Created by Matias Roldan on 13/1/18.
//  Copyright © 2018 Matias Roldan. All rights reserved.
//

import UIKit
import ReactiveSwift

class TrendingListTableViewController: UITableViewController {

    var viewModel: TrendingListViewModel?
    
    private let cellIdentifier = "cell"
    private let segueIdentifier = "SelectProject"
    private let searchController = UISearchController(searchResultsController: nil)
    private var selectedRow = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Search"
        navigationItem.searchController = searchController
        definesPresentationContext = true
        
        title = viewModel?.title

        viewModel?.projectsUpdated.signal.observeValues { [weak self] random in
            self?.tableView.reloadData()
        }
        
        viewModel?.search(text: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return viewModel?.getProjectsCount() ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! TrendingTableViewCell

        if let viewModel = viewModel {
            cell.viewModel = viewModel.createCellViewModel(forIndex: indexPath.row)
        }

        return cell
    }
    
    override public func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        selectedRow = indexPath.row
        return indexPath
    }

    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == segueIdentifier, let viewController = segue.destination as? TrendingDetailViewController {
            viewController.viewModel = viewModel?.createDetailViewModel(forIndex: selectedRow)
        }
    }
}

extension TrendingListTableViewController: UISearchResultsUpdating {

    func updateSearchResults(for searchController: UISearchController) {
        viewModel?.search(text: searchController.searchBar.text)
    }
}
