//
//  FeedViewController.swift
//  Navigation
//
//  Created by Pavel on 21.05.2022.
//

import UIKit

class FeedViewController: UIViewController {

    private let postButtonOne: UIButton = {
        let button = UIButton()
        button.setTitle("Push button", for: .normal)
        button.backgroundColor = .systemBlue
        button.addTarget(self, action: #selector(tapAction), for: .touchUpInside)
        button.layer.cornerRadius = 4
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    private let postButtonSecond: UIButton = {
        let button = UIButton()
        button.setTitle("Push button", for: .normal)
        button.backgroundColor = .systemBlue
        button.addTarget(self, action: #selector(tapAction), for: .touchUpInside)
        button.layer.cornerRadius = 4
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    private let buttonVerticalStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 10
        return stack
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        drawSelf()
    }

    @objc private func tapAction() {
        let postVC = PostViewController()
        postVC.postTitle = "Feed"
        navigationController?.pushViewController(postVC, animated: true)
    }

    private func drawSelf() {
        self.view.backgroundColor = .lightGray
        self.view.addSubview(buttonVerticalStack)
        [postButtonOne, postButtonSecond].forEach {self.buttonVerticalStack.addArrangedSubview($0)}

        NSLayoutConstraint.activate([
            self.buttonVerticalStack.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            self.buttonVerticalStack.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            self.buttonVerticalStack.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            self.postButtonOne.heightAnchor.constraint(equalToConstant: 50),
            self.postButtonSecond.heightAnchor.constraint(equalToConstant: 50)
        ])
    }

}
