//
//  MainTabBarViewController.swift
//  Navigation
//
//  Created by Pavel on 21.05.2022.
//

import UIKit

class MainTabBarViewController: UITabBarController {
    
    let feedVC = FeedViewController()
    let profileVC = ProfileViewController()
    let logInVC = LogInViewController()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        UITabBar.appearance().barTintColor = .systemBlue
        UITabBar.appearance().backgroundColor = .lightGray
        setupControllers()
    }
    private func setupControllers() {
        let feedNavigationController = UINavigationController(rootViewController: feedVC)
        feedVC.navigationItem.title = "Feed"
        feedVC.tabBarItem.title = "Feed"
        feedVC.tabBarItem.image = UIImage(systemName: "house")

        let profileNavigationController = UINavigationController(rootViewController: logInVC)
        logInVC.navigationItem.title = "Profile"
        logInVC.tabBarItem.title = "Profile"
        logInVC.tabBarItem.image = UIImage(systemName: "person.crop.circle")

        viewControllers = [feedNavigationController, profileNavigationController]
    }
}
