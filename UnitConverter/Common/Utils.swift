//
//  Utils.swift
//  UnitConverter
//
//  Created by Talal El Zeini on 7/30/23.
//

import Foundation

extension String {
    static let numberFormatter = NumberFormatter()
    var doubleValue: Double? {
        // Set the decimal separator to "." initially
        String.numberFormatter.decimalSeparator = "."
        if let result = String.numberFormatter.number(from: self){
            return result.doubleValue
        }else{
            // If conversion fails, try again with the decimal separator set to ","
            String.numberFormatter.decimalSeparator = ","
            if let result = String.numberFormatter.number(from: self){
                return result.doubleValue
            }
        }
        return nil
    }
}

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
