//
//  LaunchScreenManager.swift
//  BuildNetflix1
//
//  Created by Apple on 17/08/2023.
//

import Foundation

enum LaunchScreenPhase {
    case first
    case second
    case completed
}

final class LaunchScreenManager: ObservableObject {
    @Published private(set) var state: LaunchScreenPhase = .first
    
    func dismiss() {
        
        self.state = .second
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.state = .completed
        }
    }
}
