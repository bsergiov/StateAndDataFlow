//
//  File.swift
//  StateAndDataFlow
//
//  Created by BSergio on 23.02.2022.
//

import SwiftUI

struct ButonView: View {
    @ObservedObject var timer: TimeCounter
    
    var body: some View {
        Button(action: {timer.startTimer()}) {
            Text("\(timer.buttonTitle)")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(.red)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(.black, lineWidth: 4)
        )
    }
}
