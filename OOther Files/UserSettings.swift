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
    
    @Published var amtColorsUnlocked: Int {
        didSet {
            UserDefaults.standard.set(amtColorsUnlocked, forKey: "IntValue")
        }
    }
    
    init() {
        self.selectedColorLoad = UserDefaults.standard.string(forKey: "SelectedColorLoad") ?? "Red"
        self.amtColorsUnlocked = UserDefaults.standard.integer(forKey: "IntValue")
        
        if self.amtColorsUnlocked == 0 {
            self.amtColorsUnlocked = 0
            UserDefaults.standard.set(self.amtColorsUnlocked, forKey: "IntValue")
        }
    }
    
    func resetUserDefaults() {
        UserDefaults.standard.removeObject(forKey: "SelectedColorLoad")
        UserDefaults.standard.removeObject(forKey: "IntValue")
        
        selectedColorLoad = "Red"
        amtColorsUnlocked = 0
    }
}
