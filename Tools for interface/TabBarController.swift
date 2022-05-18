//
//  TabBarController.swift
//  Tools for interface
//
//  Created by Сергей Юханов on 22.03.2022.
//

import UIKit

class TabBarController: UITabBarController {
    
    enum TabBarItem {
        case feed
        case profile
        
        var title: String {
            switch self {
            case .feed:
                return "Лента"
            case .profile:
                return "Профиль"
            }
        }
        var image: UIImage? {
            switch self {
            case .feed:
                return UIImage(systemName: "house")
            case .profile:
                return UIImage(systemName: "person.circle")
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        setupTabBar()

        // Do any additional setup after loading the view.
    }
    
    private func setupTabBar() {
           let items: [TabBarItem] = [.feed, .profile]
           
           self.viewControllers = items.map({ tabBarItem in
               switch tabBarItem {
               case .feed:
                   return UINavigationController(rootViewController: ViewController())
               case .profile:
                   return LogInViewController()
               }
           })
           self.viewControllers?.enumerated().forEach({ (index, vc) in
               vc.tabBarItem.title = items[index].title
               vc.tabBarItem.image = items[index].image
           })
       }
}
