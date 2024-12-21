//
//  MainModuleFactory.swift
//  NIWWRD
//
//  Created by Ritik Sharma on 22/12/24.
//

import Foundation
import NIWWRDCommon

final class MainModuleFactory: ModuleFactoryProtocol {

    required init() {

    }

    func viewForAppURL(_ appURL: AppURL) -> UIViewController? {
        return nil
    }

    func viewFromDeepLinkInfo(_ deepLinkInfo: [String: Any]) -> UIViewController? {
        return nil
    }
}
