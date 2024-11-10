//
//  UnitConverterViewModel.swift
//  UnitConverter
//
//  Created by Talal El Zeini on 8/27/24.
//

import Foundation
import SwiftUI

struct ConversionResult {
    let value: String
    let isSuccess: Bool
}

class UnitConverterViewModel: ObservableObject {
    @Published var categoryIndex = 0 {
        didSet {
            sourceUnitIndex = 0
            targetUnitIndex = 1
        }
    }

    @Published var sourceUnitIndex = 0
    @Published var targetUnitIndex = 1
    @Published var amountToConvert: String = "1"

    public var data: UnitConversionDataModel

    init(data: UnitConversionDataModel) {
        self.data = data
    }

    func combinedUnitTypes() -> [String] {
        var combinedNames: [String] = []
        for unit in data.unitConversionData {
            combinedNames.append(unit.unitType)
        }
        return combinedNames
    }

    var units: [String] {
        data.unitConversionData[categoryIndex].units
    }

    var conversionRates: [String: [String: Double]] {
        data.unitConversionData[categoryIndex].unitConversionRates
    }

    func convert(unitIndex: Int? = nil) -> ConversionResult {
        guard let amount = Double(amountToConvert) else {
            return ConversionResult(value: "Invalid amount input", isSuccess: false)
        }
        print(categoryIndex)
        let targetIndex = unitIndex ?? targetUnitIndex

        guard sourceUnitIndex < units.count, targetIndex < units.count else {
            return ConversionResult(value: "Unit index out of bounds", isSuccess: false)
        }

        let sourceUnit = units[sourceUnitIndex]
        let targetUnit = units[targetIndex]

        // Handle temperature conversion specifically
        if categoryIndex == 2 {
            let convertedValue = convertTemperature(amount: amount, from: sourceUnit, to: targetUnit)
            return ConversionResult(value: convertedValue, isSuccess: true)
        }

        guard let sourceRates = conversionRates[sourceUnit],
              let conversionRate = sourceRates[targetUnit] else {
            return ConversionResult(value: "Conversion not available for \(sourceUnit) to \(targetUnit)", isSuccess: false)
        }

        let conversionValue = amount * conversionRate

        return ConversionResult(value: conversionValue.removeZerosFromEnd(), isSuccess: true)
    }

    private func convertTemperature(amount: Double, from sourceUnit: String, to targetUnit: String) -> String {
        var celsiusValue: Double

        switch sourceUnit {
        case "Celsius":
            celsiusValue = amount
        case "Fahrenheit":
            celsiusValue = (amount - 32) / 1.8
        case "Kelvin":
            celsiusValue = amount - 273.15
        default:
            return "Unsupported source unit"
        }

        var targetValue: Double

        switch targetUnit {
        case "Celsius":
            targetValue = celsiusValue
        case "Fahrenheit":
            targetValue = celsiusValue * 1.8 + 32
        case "Kelvin":
            targetValue = celsiusValue + 273.15
        default:
            return "Unsupported target unit"
        }

        return targetValue.removeZerosFromEnd()
    }

    func getRandomUnitIndices() -> [Int] {
        var usedIndices: Set<Int> = []
        var randomIndices: [Int] = []

        let numberOfOptions = 2

        while randomIndices.count < numberOfOptions {
            var randomIndex = Int.random(in: 0..<units.count)

            // Ensure the random index is not equal to targetUnitIndex or already used
            while randomIndex == targetUnitIndex || usedIndices.contains(randomIndex) {
                randomIndex = Int.random(in: 0..<units.count)
            }

            // Add the random index to usedIndices set and randomIndices array
            usedIndices.insert(randomIndex)
            randomIndices.append(randomIndex)
        }

        return randomIndices
    }
}

