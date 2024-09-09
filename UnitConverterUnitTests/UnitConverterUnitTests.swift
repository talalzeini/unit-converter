//
//  UnitConverterUnitTests.swift
//  UnitConverterUnitTests
//
//  Created by Talal El Zeini on 8/27/24.
//

import XCTest
@testable import UnitConverter

final class UnitConverterViewModelTests: XCTestCase {

    var viewModel: UnitConverterViewModel!

    override func setUpWithError() throws {
        viewModel = UnitConverterViewModel(data: UnitConversionDataModel())
    }

    override func tearDownWithError() throws {
        viewModel = nil
    }

    func testMultipleConversions() throws {
        // Create dictionaries to quickly lookup indices
        var categoryIndexMap = [String: Int]()
        var unitIndexMaps = [String: [String: Int]]() // [categoryName: [unitName: index]]

        // Populate the dictionaries
        for (categoryIndex, category) in viewModel.data.unitConversionData.enumerated() {
            categoryIndexMap[category.unitType] = categoryIndex

            var unitIndexMap = [String: Int]()
            for (unitIndex, unit) in category.units.enumerated() {
                unitIndexMap[unit] = unitIndex
            }
            unitIndexMaps[category.unitType] = unitIndexMap
        }

        // Define test cases using the names of the categories and units
        let testCases: [(amount: String, categoryName: String, sourceUnitName: String, targetUnitName: String, expectedValue: String)] = [
            // Length
            ("100", "Length", "Meters", "Centimeters", "10000"),
            ("50", "Length", "Centimeters", "Meters", "0.5"),
            ("1", "Length", "Kilometers", "Meters", "1000"),
            ("500", "Length", "Millimeters", "Centimeters", "50"),
            ("2", "Length", "Feet", "Inches", "24"),
            ("10", "Length", "Inches", "Feet", "0.8333333333333333"),
            ("1", "Length", "Miles", "Kilometers", "1.60934"),
            ("5", "Length", "Kilometers", "Miles", "3.106859"),
            ("1000", "Length", "Millimeters", "Meters", "1"),
            ("10", "Length", "Yards", "Meters", "9.144"),

            // Weight
            ("1000", "Weight", "Grams", "Kilograms", "1"),
            ("20", "Weight", "Grams", "Centigrams", "2000"),
            ("300", "Weight", "Grams", "Milligrams", "300000"),
            ("5000", "Weight", "Grams", "Ounces", "176.36980975"),
            ("100", "Weight", "Grams", "Carat", "500"),

            ("500", "Weight", "Kilograms", "Grams", "500000"),
            ("10", "Weight", "Kilograms", "Carat", "50000"),
            ("2", "Weight", "Kilograms", "Pounds", "4.40925"),
            ("10000", "Weight", "Kilograms", "Milligrams", "10000000000"),
            ("0.5", "Weight", "Kilograms", "Metric Tons", "0.0005"),


            ("200", "Weight", "Pounds", "Ounces", "3200"),
            ("50", "Weight", "Pounds", "Kilograms", "22.6796"),
            ("5", "Weight", "Pounds", "Short Tons", "0.0025"),
            ("15", "Weight", "Pounds", "Ounces", "240"),
            ("0.5", "Weight", "Pounds", "Grams", "226.796185"),

            ("300", "Weight", "Milligrams", "Grams", "0.3"),
            ("10000", "Weight", "Milligrams", "Kilograms", "0.01"),
            ("5000", "Weight", "Milligrams", "Carat", "25"),
            ("0.5", "Weight", "Milligrams", "Ounces", "0.0000176"),
            ("1", "Weight", "Milligrams", "Pounds", "0.00000220462"),

            ("100", "Weight", "Carat", "Grams", "20"),
            ("0.5", "Weight", "Carat", "Milligrams", "100"),
            ("200", "Weight", "Carat", "Ounces", "1.410958"),
            ("10", "Weight", "Carat", "Kilograms", "0.002"),
            ("1", "Weight", "Carat", "Pounds", "0.0004409249"),

            ("5000", "Weight", "Ounces", "Grams", "141747.61563"),
            ("0.5", "Weight", "Ounces", "Carat", "70.87375"),
            ("15", "Weight", "Ounces", "Pounds", "0.9375"),
            ("100", "Weight", "Ounces", "Grams", "2834.9523125"),
            ("1", "Weight", "Ounces", "Grams", "28.3495"),

            ("0.5", "Weight", "Metric Tons", "Kilograms", "500"),
            ("2", "Weight", "Metric Tons", "Short Tons", "2.20462"),
            ("0.1", "Weight", "Metric Tons", "Long Tons", "0.098416"),
            ("1", "Weight", "Metric Tons", "Pounds", "2204.6226218"),
            ("0.5", "Weight", "Metric Tons", "Ounces", "17636.980975"),

            ("1", "Weight", "Long Tons", "Metric Tons", "1.01604608"),
            ("5", "Weight", "Long Tons", "Pounds", "11200"),
            ("0.1", "Weight", "Long Tons", "Kilograms", "101.604608"),
            ("0.5", "Weight", "Long Tons", "Ounces", "17920"),
            ("10", "Weight", "Long Tons", "Grams", "10160469.088"),

            ("5", "Weight", "Short Tons", "Pounds", "10000"),
            ("1", "Weight", "Short Tons", "Kilograms", "907.18474"),
            ("0.5", "Weight", "Short Tons", "Ounces", "16000"),
            ("2", "Weight", "Short Tons", "Grams", "1814369.48"),
            ("0.1", "Weight", "Short Tons", "Metric Tons", "0.0907184"),

            ("237", "Weight", "Atomic Mass Unit", "Grams", "3.93e-22"),
            ("1150", "Weight", "Atomic Mass Unit", "Kilograms", "1.91e-19"),
            ("4500", "Weight", "Atomic Mass Unit", "Pounds", "1.68e-22"),
            ("0.75", "Weight", "Atomic Mass Unit", "Ounces", "6.00e-23"),
            ("12345", "Weight", "Atomic Mass Unit", "Carat", "2.70e-18"),

            // Temperature
            ("0", "Temperature", "Celsius", "Fahrenheit", "32"),
            ("32", "Temperature", "Fahrenheit", "Celsius", "0"),
            ("100", "Temperature", "Celsius", "Fahrenheit", "212"),
            ("212", "Temperature", "Fahrenheit", "Celsius", "100"),
            ("273.15", "Temperature", "Kelvin", "Celsius", "0"),
            ("0", "Temperature", "Celsius", "Kelvin", "273.15"),
            ("373.15", "Temperature", "Kelvin", "Celsius", "100"),
            ("100", "Temperature", "Fahrenheit", "Kelvin", "310.92777778"),
            ("310.928", "Temperature", "Kelvin", "Fahrenheit", "100.0004"),
            ("-40", "Temperature", "Celsius", "Fahrenheit", "-40"),
            ("-40", "Temperature", "Fahrenheit", "Celsius", "-40"),

            // Volume
            ("10", "Volume", "Liters", "Milliliters", "10000"),
            ("500", "Volume", "Milliliters", "Liters", "0.5"),
            ("1", "Volume", "Cubic Meters", "Liters", "1000"),
            ("1000", "Volume", "Liters", "Cubic Meters", "1"),
            ("5", "Volume", "Gallons", "Liters", "18.9271"),
            ("20", "Volume", "Liters", "Gallons", "5.28344"),
            ("2", "Volume", "Cubic Inches", "Milliliters", "32.7741"),
            ("100", "Volume", "Milliliters", "Cubic Inches", "6.10237"),
            ("10", "Volume", "Fluid Ounces", "Milliliters", "295.73529562"),
            ("250", "Volume", "Milliliters", "Fluid Ounces", "8.45351"),

            // Time
            ("3600", "Time", "Seconds", "Hours", "1"),
            ("2", "Time", "Hours", "Minutes", "120"),
            ("86400", "Time", "Seconds", "Days", "1"),
            ("5", "Time", "Days", "Hours", "120"),
            ("60", "Time", "Minutes", "Seconds", "3600"),
            ("30", "Time", "Seconds", "Minutes", "0.5"),
            ("7", "Time", "Days", "Weeks", "1"),
            ("3", "Time", "Weeks", "Days", "21"),
            ("3600", "Time", "Hours", "Seconds", "12960000"),
            ("1", "Time", "Weeks", "Days", "7"),

            // Speed
            ("60", "Speed", "Kilometers per Hour", "Meters per Second", "16.6666"),
            ("25", "Speed", "Meters per Second", "Kilometers per Hour", "90"),
            ("1", "Speed", "Miles per Hour", "Feet per Second", "1.46667"),
            ("10", "Speed", "Feet per Second", "Miles per Hour", "6.81818"),
            ("100", "Speed", "Meters per Second", "Kilometers per Hour", "360"),
            ("80", "Speed", "Kilometers per Hour", "Meters per Second", "22.2222"),
            ("500", "Speed", "Feet per Second", "Meters per Second", "152.4"),
            ("10", "Speed", "Meters per Second", "Feet per Second", "32.8084"),
            ("45", "Speed", "Miles per Hour", "Kilometers per Hour", "72.42048"),
            ("120", "Speed", "Kilometers per Hour", "Miles per Hour", "74.5645"),

            // Pressure
            ("101325", "Pressure", "Pascals", "Atmospheres", "1"),
            ("2", "Pressure", "Atmospheres", "Pascals", "202650"),
            ("1000", "Pressure", "Pascals", "Bars", "0.01"),
            ("3", "Pressure", "Bars", "Pascals", "300000"),
            ("50000", "Pressure", "Pascals", "Kilopascals", "50"),
            ("10", "Pressure", "Kilopascals", "Pascals", "10000"),
            ("14.7", "Pressure", "Pounds per Square Inch", "Atmospheres", "1.0002756695"),
            ("2", "Pressure", "Atmospheres", "Pounds per Square Inch", "29.3919"),

            // Frequency
            ("1000", "Frequency", "Hertz", "Kilohertz", "1"),
            ("5", "Frequency", "Kilohertz", "Hertz", "5000"),
            ("500", "Frequency", "Hertz", "Megahertz", "0.0005"),
            ("2", "Frequency", "Megahertz", "Hertz", "2000000"),
            ("10", "Frequency", "Kilohertz", "Megahertz", "0.01"),
            ("1", "Frequency", "Megahertz", "Kilohertz", "1000"),
            ("5000", "Frequency", "Hertz", "Kilohertz", "5"),
            ("50", "Frequency", "Kilohertz", "Hertz", "50000"),
            ("1", "Frequency", "Megahertz", "Kilohertz", "1000"),
            ("10", "Frequency", "Hertz", "Gigahertz", "1e-8"),

            // Energy
            ("1000", "Energy", "Joules", "Kilojoules", "1"),
            ("2", "Energy", "Kilojoules", "Joules", "2000"),
            ("1", "Energy", "Calories (IT)", "Joules", "4.1868"),
            ("5000", "Energy", "Joules", "Calories (IT)", "1194.2294831"),
            ("100", "Energy", "Calories (IT)", "Kilojoules", "0.41868"),
            ("2000", "Energy", "Kilojoules", "Calories (IT)", "477691.79326"),
            ("500", "Energy", "Joules", "Watt-Hours", "0.138889"),
            ("1", "Energy", "Watt-Hours", "Joules", "3600"),

            // Digital Storage
            ("1024", "Digital Storage", "Bytes", "Kilobytes", "1"),
            ("5", "Digital Storage", "Kilobytes", "Bytes", "5120"),
            ("1", "Digital Storage", "Kilobytes", "Bytes", "1024"),
            ("1000", "Digital Storage", "Bytes", "Megabytes", "0.0009765625"),
            ("10", "Digital Storage", "Megabytes", "Bytes", "10485760"),
            ("1", "Digital Storage", "Megabytes", "Kilobytes", "1024"),
            ("500", "Digital Storage", "Kilobytes", "Megabytes", "0.48828125"),
            ("2048", "Digital Storage", "Bytes", "Kilobytes", "2"),
            ("100", "Digital Storage", "Kilobytes", "Gigabytes", "0.0000953674"),
            ("1", "Digital Storage", "Gigabytes", "Megabytes", "1024"),

            // Power
            ("1000", "Power", "Watts", "Kilowatts", "1"),           // 1000 Watts to Kilowatts
            ("3", "Power", "Kilowatts", "Watts", "3000"),            // 3 Kilowatts to Watts
        ]

        for testCase in testCases {
            guard let categoryIndex = categoryIndexMap[testCase.categoryName] else {
                XCTFail("Category \(testCase.categoryName) not found.")
                continue
            }

            guard let sourceUnitIndex = unitIndexMaps[testCase.categoryName]?[testCase.sourceUnitName] else {
                XCTFail("Source unit \(testCase.sourceUnitName) not found in category \(testCase.categoryName).")
                continue
            }

            guard let targetUnitIndex = unitIndexMaps[testCase.categoryName]?[testCase.targetUnitName] else {
                XCTFail("Target unit \(testCase.targetUnitName) not found in category \(testCase.categoryName).")
                continue
            }

            // Define a tolerance level for comparison
            let tolerance: Decimal = 0.0001

            // Set these values in the view model
            viewModel.amountToConvert = testCase.amount
            viewModel.categoryIndex = categoryIndex
            viewModel.sourceUnitIndex = sourceUnitIndex
            viewModel.targetUnitIndex = targetUnitIndex

            let conversionResult = viewModel.convert()
            print("Testing conversion: \(testCase.amount) from \(testCase.sourceUnitName) to \(testCase.targetUnitName)")
            print("Result: \(conversionResult.value)")

            guard let actualValue = Decimal(string: conversionResult.value),
                  let expectedValue = Decimal(string: testCase.expectedValue) else {
                XCTFail("Failed to convert strings to Decimal.")
                return
            }

            XCTAssertTrue(conversionResult.isSuccess, "Conversion should succeed.")
            XCTAssertTrue(abs(actualValue - expectedValue) <= tolerance, "\(actualValue) != \(expectedValue) HELLOO Converted value is incorrect for conversion from \(testCase.sourceUnitName) to \(testCase.targetUnitName).")

        }
    }
    // Test for edge cases (e.g., empty input)
    func testEmptyInputConversion() throws {
        viewModel.amountToConvert = ""
        let conversionResult = viewModel.convert()
        XCTAssertFalse(conversionResult.isSuccess, "Conversion should fail for empty input.")
        XCTAssertEqual(conversionResult.value, "Invalid amount input", "Value should be 0 for empty input.")
    }

    // Test for random unit indices
    func testGetRandomUnitIndices() throws {
        let indices = viewModel.getRandomUnitIndices()
        XCTAssertEqual(indices.count, 2, "Should return exactly 2 random indices.")
    }

    // Test the combinedUnitNames method
    func testCombinedUnitNames() throws {
        let unitNames = viewModel.combinedUnitTypes()
        XCTAssertGreaterThan(unitNames.count, 0, "Combined unit names should return at least one name.")
    }
}
