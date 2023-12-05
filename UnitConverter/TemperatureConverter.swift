//
//  TemperatureConverter.swift
//  UnitConverter
//
//  Created by Talal El Zeini on 9/3/23.
//

import Foundation

struct TemperatureConverter {
    
    // Function to convert temperature from one unit to another
    static func convertTemperature(amount: Double, sourceUnit: String, targetUnit: String) -> Double {
        
        var conversionValue : Double = 1.0
        
        // Switch based on the source input unit
        switch (sourceUnit) {
            case "Celsius":
                // Convert from Celsius to the target unit
                switch targetUnit {
                    case "Fahrenheit":
                        conversionValue = (amount * 9/5) + 32
                    case "Kelvin":
                        conversionValue = amount + 273.15
                    default:
                        conversionValue = amount
                }
            case "Fahrenheit":
                // Convert from Fahrenheit to the target unit
                switch targetUnit {
                    case "Celsius":
                        conversionValue = (amount - 32) * 5/9
                    case "Kelvin":
                        conversionValue = (amount + 459.67) * 5/9
                    default:
                        conversionValue = amount
                }
            case "Kelvin":
                // Convert from Kelvin to the target unit
                switch targetUnit {
                    case "Celsius":
                        conversionValue = amount - 273.15
                    case "Fahrenheit":
                        conversionValue = (amount * 9/5) - 459.67
                    default:
                        conversionValue = amount
                }
            default:
                print("Invalid unit selection")
        }
        
        return conversionValue
    }
}
