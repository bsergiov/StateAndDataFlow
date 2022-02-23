//
//  File.swift
//  StateAndDataFlow
//
//  Created by BSergio on 23.02.2022.
//

import SwiftUI

struct ButonLogout: View {
    @AppStorage(KeyStorage.isRegister.rawValue) private var isRegistred = false
    @AppStorage(KeyStorage.name.rawValue) private var name = ""
    
    var body: some View {
        Button(action: logout) {
            Text("LogOut")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        
        .frame(width: 200, height: 60)
        .background(.blue)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(.black, lineWidth: 4)
        )
        
    }
    
    private func logout() {
        isRegistred.toggle()
        name = ""
    }
}
