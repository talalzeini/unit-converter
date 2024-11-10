//
//  Double+Formatting.swift
//  UnitConverter
//
//  Created by Talal El Zeini on 8/31/24.
//

import Foundation

extension Double {
    // Method to format a double as a string with trailing zeros removed
    func removeZerosFromEnd() -> String {
        let formatter = NumberFormatter()
        let number = NSNumber(value: self)

        // Set minimum and maximum fraction digits to control trailing zeros
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = 16

        // Return the formatted string, or an empty string if formatting fails
        return String(formatter.string(from: number) ?? "")
    }
}
