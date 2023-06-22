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
    
    @Published var fourWonToday: Bool {
           didSet {
               UserDefaults.standard.set(fourWonToday, forKey: "fourWonToday")
           }
       }
    
    @Published var fiveWonToday: Bool {
           didSet {
               UserDefaults.standard.set(fiveWonToday, forKey: "fiveWonToday")
           }
       }
    
    @Published var sixWonToday: Bool {
           didSet {
               UserDefaults.standard.set(sixWonToday, forKey: "sixWonToday")
           }
       }
    
   
    
    init() {
        
        
        self.fourWonToday = UserDefaults.standard.bool(forKey: "fourWonToday")
        self.fiveWonToday = UserDefaults.standard.bool(forKey: "fiveWonToday")
        self.sixWonToday = UserDefaults.standard.bool(forKey: "sixWonToday")
        self.selectedColorLoad = UserDefaults.standard.string(forKey: "SelectedColorLoad") ?? "Red"
        self.amtColorsUnlocked = UserDefaults.standard.integer(forKey: "IntValue")
        
        if self.amtColorsUnlocked == 0 {
            self.amtColorsUnlocked = 0
            UserDefaults.standard.set(self.amtColorsUnlocked, forKey: "IntValue")
        }
    }
    
    // This function below will reset values only if function is called 
    func resetUserDefaults() {
        UserDefaults.standard.removeObject(forKey: "SelectedColorLoad")
        UserDefaults.standard.removeObject(forKey: "IntValue")
        UserDefaults.standard.removeObject(forKey: "fourWonToday")
        UserDefaults.standard.removeObject(forKey: "fiveWonToday")
        UserDefaults.standard.removeObject(forKey: "sixWonToday")
        
        selectedColorLoad = "Red"
        amtColorsUnlocked = 0
        fourWonToday = false
        fiveWonToday = false
        sixWonToday = false
    }
    
    //This fuction below will reset values based on Calender Data
    
    private func resetValuesIfNeeded() {
            let lastPlayedDate = UserDefaults.standard.object(forKey: "LastPlayedDate") as? Date
            let calendar = Calendar.current

            if let lastPlayedDate = lastPlayedDate, calendar.isDateInToday(lastPlayedDate) == false {
                // Reset variables if it's a new day
                fourWonToday = false
                fiveWonToday = false
                sixWonToday = false
            }
        }
}
