//
//  ApplicationFlowController.swift
//  NIWWRD
//
//  Created by Ritik Sharma on 21/12/24.
//

import Foundation
import NIWWRDCommon

final class ApplicationFlowController: NSObject {
    
    let navigator: Navigator
    
    init(window: UIWindow, launchOptions: [UIApplication.LaunchOptionsKey: Any]?) {
        
        //Root window setup
        if let homeTabController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HomeBaseViewController") as? HomeBaseViewController {
            let navigationController = UINavigationController(rootViewController: homeTabController)
//            HomeActionManager.navigationController = navigationController
            window.rootViewController = navigationController
        }
        
        window.makeKeyAndVisible()
        
        self.navigator = NavigatorImpl(rootViewController: window.rootViewController as! UINavigationController)
        
        super.init()
    }
    
}

extension ApplicationFlowController: ModuleURLConsumer {
    func viewForAppURL(_ appURL: AppURL) -> UIViewController? {
        return nil
    }
    
    
    @discardableResult
    func handleAppURL(_ URLString: AppURL, action: NavigatorAction, map: ((UIViewController) -> UIViewController)?) -> Bool {
        guard let module = AppRouter.moduleForURLPath(URLString.module) else { return false }
        return module.handleAppURL(URLString, action: action, map: map)
    }
}
