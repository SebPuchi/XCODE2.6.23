//
//  ColorHelperFunc.swift
//  tues6.6.23
//
//  Created by Sebastian Pucher on 6/19/23.
//

import Foundation

import SwiftUI

extension Color {
    static func fromString(_ colorString: String) -> Color {
        switch colorString {
        case "Red":
            return .red
        case "Blue":
            return .blue
        case "Yellow":
            return .yellow
        case "Purple":
            return .purple
        case "Green":
            return .green
        case "Orange":
            return .orange
        case "Pink":
            return .pink

        
        default:
            return .red
            
            
        }
    }
}

