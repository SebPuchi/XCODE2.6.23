//
//  ColorSelect.swift
//  tues6.6.23
//
//  Created by Sebastian Pucher on 6/19/23.
//

import Foundation
import SwiftUI

public class ColorSelect: ObservableObject {
    
    @Published public var colorChoice: String
    
    public init() {
        self.colorChoice = "Red"
    }
    
    public func getColor() -> String {
        return colorChoice
    }
    
    public func setColor(newChoice: String) {
        colorChoice = newChoice
    }
}



