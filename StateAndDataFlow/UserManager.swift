//
//  UserManager.swift
//  StateAndDataFlow
//
//  Created by BSergio on 22.02.2022.
//

import Foundation
import Combine

class UserManager: ObservableObject {
    @Published var isRegister = false
    var name = ""
}
