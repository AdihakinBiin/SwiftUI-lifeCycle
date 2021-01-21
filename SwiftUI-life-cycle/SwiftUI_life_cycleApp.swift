//
//  SwiftUI_life_cycleApp.swift
//  SwiftUI-life-cycle
//
//  Created by Abdihakin Elmi on 1/19/21.
//

import SwiftUI

@main
struct SwiftUI_life_cycleApp: App {
    @UIApplicationDelegateAdaptor(MyAppDelegate.self) var appDelegate
    @Environment(\.scenePhase) var scenePhase
    init(){
        //configure
        doSomething()
    }
    var body: some Scene {
        
        WindowGroup {
            ContentView()
        }
        .onChange(of: scenePhase) { (phase) in
            switch phase {
            case .active:
                print("active")
            case .inactive:
                print("inactive")
            case .background:
                print("background")
            default:
                print("add something new")
            }
            
        }
        
    }
    private func doSomething(){
        
    }
}
