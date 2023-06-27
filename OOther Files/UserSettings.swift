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
    
    private var timer: Timer?
    
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
        
        startMidnightTimer()
    }
    
    // Not working
    
    
    
    private func startMidnightTimer() {
        let calendar = Calendar.current
        let now = Date()
        
        var components = calendar.dateComponents(in: TimeZone(identifier: "America/New_York")!, from: now)
        components.hour = 0
        components.minute = 0
        components.second = 0
        
        let midnightET = calendar.date(from: components)!
        
        if now > midnightET {
            // If current time is already past midnight ET, add one day to the target date
            components.day! += 1
        }
        
        let timeInterval = calendar.date(byAdding: .day, value: 1, to: midnightET)!.timeIntervalSinceNow
        
        timer = Timer.scheduledTimer(withTimeInterval: timeInterval, repeats: false) { [weak self] _ in
            self?.resetWonTodayVariables()
            self?.startMidnightTimer()
        }
    }
    
    private func resetWonTodayVariables() {
        fourWonToday = false
        fiveWonToday = false
        sixWonToday = false
    }
    
    // This function below will reset values only if the function is called
    func resetUserDefaults() {
        UserDefaults.standard.removeObject(forKey: "SelectedColorLoad")
        UserDefaults.standard.removeObject(forKey: "IntValue")
        UserDefaults.standard.removeObject(forKey: "fourWonToday")
        UserDefaults.standard.removeObject(forKey: "fiveWonToday")
        UserDefaults.standard.removeObject(forKey: "sixWonToday")
        
        selectedColorLoad = "Red"
        amtColorsUnlocked = 0
        resetWonTodayVariables()
    }
}


