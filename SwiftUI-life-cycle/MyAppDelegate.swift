//
//  MyAppDelegate.swift
//  SwiftUI-life-cycle
//
//  Created by Abdihakin Elmi on 1/20/21.
//

import UIKit
class MyAppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        print("hi from app delegate")
        return true
    }
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        let config = UISceneConfiguration(name: "my Scene Delegate", sessionRole: connectingSceneSession.role)
        config.delegateClass = MySceneDelegate.self
        return config
    }
}
