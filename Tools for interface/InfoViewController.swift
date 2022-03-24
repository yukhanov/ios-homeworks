//
//  InfoViewController.swift
//  Tools for interface
//
//  Created by Сергей Юханов on 24.03.2022.
//

import UIKit

class InfoViewController: UIViewController {
    private lazy var alertButton: UIButton = {
            let button = UIButton()
            button.translatesAutoresizingMaskIntoConstraints = false
            button.setTitle("Show alert", for: .normal)
            button.setTitleColor(.white, for: .normal)
    
            button.layer.cornerRadius = 15
            button.backgroundColor = .systemBlue
            button.addTarget(self, action: #selector(showAlert), for: .touchUpInside)
            
            return button
        }()

        override func viewDidLoad() {
            super.viewDidLoad()
            
            view.backgroundColor = .white
            view.addSubview(alertButton)
            
            alertButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50).isActive = true
            alertButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
            alertButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
            alertButton.heightAnchor.constraint(equalToConstant: 50).isActive = true

            // Do any additional setup after loading the view.
        }
        
        @objc private func showAlert() {
            let ac = UIAlertController(title: "Alert controller", message: "Test alert controller", preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "Test", style: .default, handler: { _ in print("Test print")
            }))
            ac.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            present(ac, animated: true)
        }
        
}
