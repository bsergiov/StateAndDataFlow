//
//  StarterView.swift
//  StateAndDataFlow
//
//  Created by BSergio on 22.02.2022.
//

import SwiftUI

struct StarterView: View {
    
    @AppStorage(KeyStorage.isRegister.rawValue) var isRegister = false
    
    var body: some View {
        Group {
            if isRegister {
                ContentView()
            } else {
                RegisterView()
            }
        }
    }
}

