//
//  AppDelegate.swift
//  TrendingProjects
//
//  Created by Matias Roldan on 13/1/18.
//  Copyright © 2018 Matias Roldan. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        let navController = self.window?.rootViewController as! UINavigationController
        let viewController = navController.viewControllers[0] as! TrendingListTableViewController
        let trendingListViewModel = TrendingListViewModelDefault(domain: DomainDefault(repository: RepositoryDefault()))
        viewController.viewModel = trendingListViewModel
        
        return true
    }

}
