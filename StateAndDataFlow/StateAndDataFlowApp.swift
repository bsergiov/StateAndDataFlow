//
//  StateAndDataFlowApp.swift
//  StateAndDataFlow
//
//  Created by BSergio on 22.02.2022.
//

import SwiftUI

@main
struct StateAndDataFlowApp: App {
    
    
    @StateObject private var userManager = UserManager()
    @AppStorage("isRegistred") private var isRegistred = false
    
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(userManager)
                
        }
    }
}
