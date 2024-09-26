//
//  PostViewController.swift
//  Navigation
//
//  Created by Pavel on 21.05.2022.
//

import UIKit

class PostViewController: UIViewController {
    
    var postTitle: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        title = postTitle
        makeBarBottonItem()
       
    }
    private func makeBarBottonItem() {
        let barItem = UIBarButtonItem(title: "Info", style: .plain, target: self, action: #selector(tapAction))
        navigationItem.rightBarButtonItem = barItem
    }

    @objc private func tapAction() {
        let vc = InfoViewController()
        present(vc, animated: true)
    }
}
