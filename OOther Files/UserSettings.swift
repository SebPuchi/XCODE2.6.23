//
//  UserSettings.swift
//  tues6.6.23
//
//  Created by Sebastian Pucher on 6/20/23.
//

import Foundation

import SwiftUI

class UserSettings: ObservableObject {
    @Published var selectedColorLoad: String {
        didSet {
            UserDefaults.standard.set(selectedColorLoad, forKey: "SelectedColorLoad")
        }
    }

    init() {
        self.selectedColorLoad = UserDefaults.standard.string(forKey: "SelectedColorLoad") ?? "Red"
    }
    
    func resetUserDefaults() {
            UserDefaults.standard.removeObject(forKey: "SelectedColorLoad")
            selectedColorLoad = "Red"
        }
}

