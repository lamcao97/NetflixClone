//
//  BuildNetflixApp.swift
//  Shared
//
//  Created by Nikita Thomas on 7/6/20.
//

import SwiftUI

@main
struct BuildNetflixApp: App {
    
    @StateObject var launchScreenManager = LaunchScreenManager()
    
    var body: some Scene {
        WindowGroup {
            ZStack{
                ContentView()
                
                if launchScreenManager.state != .completed {
                    SplashScreenView()
                }
            }
            .environmentObject(launchScreenManager)
        }
    }
}
