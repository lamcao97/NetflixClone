//
//  SplashScreenView.swift
//  SplashScreen
//
//  Created by Federico on 20/01/2022.
//

import SwiftUI

struct SplashScreenView: View {
    
    @EnvironmentObject var launchScreenManager: LaunchScreenManager
    @State private var firstPhaseIsAnimating: Bool = false
    @State private var secondPhaseIsAnimating: Bool = false
    
    private let timer = Timer.publish(every: 0.5,
                                      on: .main,
                                      in: .common).autoconnect()
    
    var body: some View {
        ZStack {
            background
            logo
        }
        .onReceive(timer) { input in
                
            switch launchScreenManager.state {
            case .first:
                withAnimation(.spring()) {
                    firstPhaseIsAnimating.toggle()
                }
            case .second:
                withAnimation(.easeInOut) {
                    secondPhaseIsAnimating.toggle()
                }
            default: break
                
            }
            
        }
    }
}
struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
            SplashScreenView()
                .environmentObject(LaunchScreenManager())
    }
}

private extension SplashScreenView {
    var background: some View {
        Color("background-color")
            .ignoresSafeArea(.all)
    }
    
    var logo: some View {
        Image("netflix_logo 1")
            .scaleEffect(firstPhaseIsAnimating ? 0.6 : 1)
            .scaleEffect(secondPhaseIsAnimating ? UIScreen.main.bounds.size.height / 4 : 1)
    }
}
