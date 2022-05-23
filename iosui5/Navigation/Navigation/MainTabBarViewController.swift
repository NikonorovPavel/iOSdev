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

        let profileNavigationController = UINavigationController(rootViewController: profileVC)
        profileVC.navigationItem.title = "Profile"
        profileVC.tabBarItem.title = "Profile"
        profileVC.tabBarItem.image = UIImage(systemName: "person.crop.circle")

        viewControllers = [feedNavigationController, profileNavigationController]
    }
}
