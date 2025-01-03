//
//  HomeBaseViewController.swift
//  NIWWRD
//
//  Created by Ritik Sharma on 21/12/24.
//

import UIKit
import NIWWRDCommon

final class HomeBaseViewController: UITabBarController {
    
    
    var prevSelectedIndex: Int?
    override var selectedIndex: Int {
        didSet {
            self.prevSelectedIndex = self.selectedIndex
            // update view controller
        }
    }
    
    override var selectedViewController: UIViewController? {
        didSet {
            // update view controller
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        
        self.addVcsToTabBar()
        
    }
}

extension HomeBaseViewController: UITabBarControllerDelegate {
    
}


extension HomeBaseViewController {
    func addVcsToTabBar() {
        let firstVC = HomeViewController.loadFromStoryboard()
        firstVC.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 0)
        let secondVC = UIViewController()
        secondVC.tabBarItem = UITabBarItem(title: "Settings", image: UIImage(systemName: "gear"), tag: 1)
        
        // Add them to the tab bar
        self.viewControllers = [firstVC, secondVC]
    }
}
