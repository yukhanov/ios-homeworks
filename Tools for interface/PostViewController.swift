//
//  PostViewController.swift
//  Tools for interface
//
//  Created by Сергей Юханов on 22.03.2022.
//

import UIKit

class PostViewController: UIViewController {
    
    
    
    var post: Post = Post()
    
   
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemMint
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = post.title
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Info", style: .done, target: self, action: #selector(showInfo))

        // Do any additional setup after loading the view.
    }
    
    
    @objc func showInfo() {
        let infoVC = InfoViewController()
        self.present(infoVC, animated: true)
    }


    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        
//    }
    
}
