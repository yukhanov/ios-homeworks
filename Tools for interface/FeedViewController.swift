//
//  FeedViewController.swift
//  Tools for interface
//
//  Created by Сергей Юханов on 22.03.2022.
//

import UIKit

class FeedViewController: UIViewController {
    
    let post: Post = Post()
  
    
    private lazy var transitionButton: UIButton = {
            let button = UIButton()
            button.layer.cornerRadius = 12
            button.clipsToBounds = true
            button.backgroundColor = .systemYellow
            button.setTitle("Перейти на другой экран", for: .normal)
            button.setTitleColor(.white, for: .normal)
            button.addTarget(self, action: #selector(didTapTransitionButton), for: .touchUpInside)
            button.translatesAutoresizingMaskIntoConstraints = false
            return button
        }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemRed
        
        
        view.addSubview(transitionButton)
        activateConstraints()

        // Do any additional setup after loading the view.
    }
    
    private func activateConstraints() {
            
            transitionButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -100).isActive = true
            transitionButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
            transitionButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20).isActive = true
            transitionButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        }
    
    
    @objc private func didTapTransitionButton() {
    
        let postVC = PostViewController()
        postVC.post = post
    
        self.navigationController?.pushViewController(postVC, animated: true)
    }
    

    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let destinationController = segue.destination as? PostViewController else { return }
//
//             destinationController.closure = {
//
//                 // this will be executed when `someButtonTapped(_:)` will be called
//                 print("success")
//             }
//
//    }
    

}
