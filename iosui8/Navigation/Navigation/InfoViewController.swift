//
//  InfoViewController.swift
//  Navigation
//
//  Created by Pavel on 21.05.2022.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        makeButton()
    }
    
    private func makeButton() {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 40))
        button.center = view.center
        button.setTitle("Back", for: .normal)
        button.backgroundColor = .systemBlue
        button.addTarget(self, action: #selector(tapAction), for: .touchUpInside)
        button.layer.cornerRadius = 3
        view.addSubview(button)
    }

    @objc private func tapAction() {
        let alert = UIAlertController(title: "Back", message: "Are you sure you want to go out?", preferredStyle: .alert)
        let okAlert = UIAlertAction(title: "Close", style: .default) { _ in
            self.dismiss(animated: true)
            print("Message")
        }
        let cancelAlert = UIAlertAction(title: "Cancel", style: .destructive)
        alert.addAction(cancelAlert)
        alert.addAction(okAlert)
        present(alert, animated: true)
    }
}
