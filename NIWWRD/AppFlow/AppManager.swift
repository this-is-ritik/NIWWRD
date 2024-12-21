//
//  AppManager.swift
//  NIWWRD
//
//  Created by Ritik Sharma on 21/12/24.
//

import Foundation
import NIWWRDCommon

final class AppManager: NSObject {
    
    override init() {}
    
//    private lazy var appsFlyerHelper: AppsFlyerHelper = {
//        return AppsFlyerHelper()
//    }()
    
    func setup() {
        intiateLaunchCalls()
    }
    
    private func intiateLaunchCalls() { }

    func handleLaunchOptions(application: UIApplication, options: [UIApplication.LaunchOptionsKey: Any]?) {
//        setupApplsFlyerForDeeplinking(options)
    }
    
//    func registerNotifications() {
//        if (!(AppVariables.sharedInstance.isFirstAppLaunchAfterInstall == true || AppVariables.sharedInstance.isFirstAppLaunchAfterUpdate == true)) {
//            // Register  User
//            PushTokenManager.sharedInstance.registerUserPushTokenIfNeeded()
//        }
//    }
    
    // MARK: - Fetch Travellers
//    private func checkUserLoginState(successHandler: @escaping () -> Void, failureHandler: @escaping ((_ errorCode: Int?, _ errorMessage: String?) -> Void)) {
//        if Account.sharedInstance.isLoggedIn {
//            if let _ = Account.sharedInstance.activeAccount {
//                Account.sharedInstance.checkUserSessionStatus({_ in
//                    successHandler()
//                }, failureHandler: { (errorCode, errorMessage) in
//                    let errorCodes = LoginModule.unauthorisedErrorCodes
//                    if let errorCode = errorCode, errorCodes.contains(errorCode) {
//                        if Account.sharedInstance.isUserInCorporateLogin() {
//                            HomeActionManager.showSwitchController(shdActAsSplash: false, shdLogoutCorporate: true, corporateOnly: true)
//                        } else {
//                            Account.sharedInstance.loggedOut(needNotification: true, personalOnly: true)
//                        }
//                    }
//                    failureHandler(errorCode, errorMessage)
//                    
//                })
//                
//            } else {
//                Account.sharedInstance.loggedOut(needNotification: true)
//            }
//        } else {
//            successHandler()
//        }
//    }
}
