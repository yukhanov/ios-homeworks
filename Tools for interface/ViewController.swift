//
//  ViewController.swift
//  Tools for interface
//
//  Created by Сергей Юханов on 22.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let feedVC = FeedViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        

        view.backgroundColor = .white
        setupNavigationBar()
        
        addChild(feedVC)
        feedVC.view.frame = view.frame
        view.addSubview(feedVC.view)

        // Do any additional setup after loading the view.

    }
    
    func setupNavigationBar() {
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Заголовок"
        navigationItem.backButtonTitle = "Назад"
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
