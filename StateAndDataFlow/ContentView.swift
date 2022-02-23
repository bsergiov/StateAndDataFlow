//
//  ContentView.swift
//  StateAndDataFlow
//
//  Created by BSergio on 22.02.2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var timer = TimeCounter()
    @AppStorage(KeyStorage.name.rawValue) private var name = ""
    @EnvironmentObject var user: UserManager
    
    var body: some View {
        VStack(spacing: 40) {
            Text("Hi, \(name)")
                .font(.largeTitle)
                .offset(x: 0, y: 100)
            Text("\(timer.counter)")
                .font(.largeTitle)
                .offset(x: 0, y: 100)
            Spacer()
            ButonView(timer: timer)
            Spacer()
            ButonLogout()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
