//
//  HomeBaseViewController.swift
//  NIWWRD
//
//  Created by Ritik Sharma on 21/12/24.
//

import UIKit

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
        
    }
}

extension HomeBaseViewController: UITabBarControllerDelegate {
    
}
