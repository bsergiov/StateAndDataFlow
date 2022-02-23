//
//  TimeCounter.swift
//  StateAndDataFlow
//
//  Created by BSergio on 22.02.2022.
//

import Foundation
import Combine


class TimeCounter: ObservableObject {
    var objectWillChange = PassthroughSubject<TimeCounter, Never>()
    
    var counter = 3
    var timer: Timer?
    
    var buttonTitle = "Start"
    
    
    func startTimer() {
        if counter > 0 {
            timer = Timer.scheduledTimer(
                timeInterval: 1,
                target: self,
                selector: #selector(updateCounter),
                userInfo: nil,
                repeats: true
            )
        }
        buttonDidTapped()
    }
    
    @objc private func updateCounter() {
        if counter > 0 {
            counter -= 1
        } else {
            kilTimer()
            buttonTitle = "Reset"
        }
        
        objectWillChange.send(self)
    }
    
    private func kilTimer() {
        timer?.invalidate()
        timer = nil
    }
    
    private func buttonDidTapped() {
        if buttonTitle == "Reset" {
            counter = 3
            buttonTitle = "Start"
        } else {
            buttonTitle = "Wait.."
        }
        
        objectWillChange.send(self)
    }
    
}
