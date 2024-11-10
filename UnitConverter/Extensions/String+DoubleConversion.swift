//
//  String+DoubleConversion.swift
//  UnitConverter
//
//  Created by Talal El Zeini on 8/31/24.
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

