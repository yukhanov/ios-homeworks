//
//  SecondViewController.swift
//  Tools for interface
//
//  Created by Сергей Юханов on 22.03.2022.
//

import UIKit

class SecondViewController: UIViewController {
    
    let profileVC = ProfileViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addChild(profileVC)
        profileVC.view.frame = view.frame
        view.addSubview(profileVC.view)
        

        // Do any additional setup after loading the view.
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
