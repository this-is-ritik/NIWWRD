//
//  AppDelegate.swift
//  NIWWRD
//
//  Created by Ritik Sharma on 21/12/24.
//

import UIKit
import NIWWRDCommon

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    var rootNavigationController: UINavigationController? {
        return rootNavigationControllerForDeepLinking()
    }
    
    var window: UIWindow?
    var appFlowController: ApplicationFlowController!

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.addAppLaunchCalls(application: application, launchOptions: launchOptions)
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}


extension AppDelegate {
    func addAppLaunchCalls(application: UIApplication, launchOptions: [UIApplication.LaunchOptionsKey: Any]?) {
        configureRouting(launchOptions)
        setNavigationBarAppearance()
        #if DEBUG
        if CommandLine.arguments.contains("--observeConstraintBrekingScript") {
            //notifier.startListening()
        }
        #endif
    }
     
    // MARK: Appearance
    func setNavigationBarAppearance() {
//        UINavigationController.setDefaultAppearance()
//        self.rootNavigationController?.clearBackBarBattonText()
    }
    
    func rootNavigationControllerForDeepLinking() -> UINavigationController? {
        var navigationController: UINavigationController?
        
        if let navCtrl = window?.rootViewController as? UINavigationController {
            navigationController = navCtrl
        }
        
        return navigationController
    }
}


// MARK: - Routing
extension AppDelegate {
    
    func configureRouting(_ launchOptions: [UIApplication.LaunchOptionsKey: Any]?) {
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.appFlowController = ApplicationFlowController(window: self.window!, launchOptions: launchOptions)
        
        setupAppRouter(navigator: appFlowController.navigator)
        AppRouter.registerHostApp(appFlowController)
        registerModules()
    }
    
    func registerModules() {
        AppRouter.registerFeatureModuleClass(MainModuleController.self, factory: MainModuleFactory.self, path: AppURL.Module.main)
        AppRouter.registerFeatureModuleClass(CommonModuleController.self, factory: CommonModuleFactory.self, path: AppURL.Module.common)
    }
}
