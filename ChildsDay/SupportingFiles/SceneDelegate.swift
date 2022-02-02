//
//  SceneDelegate.swift
//  ChildsDay
//
//  Created by Юрий Альт on 18.01.2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        window?.makeKeyAndVisible()
        let tabBarController = TabBarController()
        window?.rootViewController = tabBarController
    }
}

