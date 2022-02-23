//
//  RegisterView.swift
//  StateAndDataFlow
//
//  Created by BSergio on 22.02.2022.
//

import SwiftUI

struct RegisterView: View {

    @State private var disabledButton = true

    @AppStorage(KeyStorage.isRegister.rawValue) private var isRegistred = false
    @AppStorage(KeyStorage.name.rawValue) private var name = ""
    
    var body: some View {
        VStack {
            
            HStack {
                
                TextField("Enter your name", text: $name)
                    .onChange(of: name, perform: {newValue in
                        disabledButton = newValue.count < 3
                    })
                    .multilineTextAlignment(.center)
                Text("\(name.count)")
                    .foregroundColor(disabledButton ? .red : .green)
                    .padding()
            }
            Button(action: registerUser) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("Ok")
                }
            }
            .disabled(disabledButton)
        }
    }
}

extension RegisterView {
    private func registerUser() {
        if !name.isEmpty {
            isRegistred.toggle()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
