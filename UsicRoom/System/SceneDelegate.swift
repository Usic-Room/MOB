//
//  SceneDelegate.swift
//  UsicRoom
//
//  Created by Chan on 11/7/24.
//

import SwiftUI

final class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
    }
    
    func sceneWillResignActive(_ scene: UIScene) {
//        coverViewManager?.addCoverView()
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
//        coverViewManager?.addCoverView()
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
//        if coverViewManager?.hasCoverView() == true {
//            self.authenticateUser()
//        }
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
//        if coverViewManager?.hasCoverView() == true && !AppStateManager.shared.isBegin {
//            self.authenticateUser()
//        }
    }
    
}
