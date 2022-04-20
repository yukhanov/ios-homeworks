//
//  ProfileViewController.swift
//  Tools for interface
//
//  Created by Сергей Юханов on 22.03.2022.
//

import UIKit

class ProfileViewController: UIViewController {
    
    let profileHeaderView = ProfileHeaderView()
    


    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Profile"
        

        view.backgroundColor = .gray
        view.addSubview(profileHeaderView)
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        profileHeaderView.frame = view.frame
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
