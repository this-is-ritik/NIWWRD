//
//  MainModuleController.swift
//  NIWWRD
//
//  Created by Ritik Sharma on 21/12/24.
//

import Foundation
import NIWWRDCommon

final class MainModuleController: ModuleController {
    @discardableResult
    public override func handleAppURL(_ URLString: AppURL,
                           action: NavigatorAction,
                           map: ((UIViewController) -> UIViewController)?) -> Bool {
        switch URLString {
        case .homePage:
            navigator.popToRoot(animated: true)
            guard let navController = self.navigator.rootViewController else { return false }
            if navController.viewControllers.count > 1 {
                navController.popToRootViewController(animated: true)
            }
        }
        return false
    }
}
