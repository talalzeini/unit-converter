//
//  UnitConverterUnitTests.swift
//  UnitConverterUnitTests
//
//  Created by Talal El Zeini on 12/4/23.
//

import XCTest
@testable import UnitConverter

final class UnitConverterUnitTests: XCTestCase {

    let lengthCategory = Data().unitCategories[0]
    let weightCategory = Data().unitCategories[1]
    
    func testLengthConversion() {
            
            let lengthView = UnitConverterView(
                viewTitle: lengthCategory.viewTitle,
                viewImageName: lengthCategory.viewImageName,
                conversionRates: lengthCategory.conversionRates,
                unitNames: lengthCategory.unitNames
            )
            
            // Test conversion from Meters to Centimeters
            XCTAssertEqual(lengthView.convert("2.5", sourceUnitIndex: 0, targetUnitIndex: 1), "250")

            // Test conversion from Centimeters to Millimeters
            XCTAssertEqual(lengthView.convert("10", sourceUnitIndex: 1, targetUnitIndex: 2), "100")

            // Test conversion from Millimeters to Kilometers
            XCTAssertEqual(lengthView.convert("500000", sourceUnitIndex: 2, targetUnitIndex: 3), "0.5")

            // Test conversion from Kilometers to Miles
            XCTAssertEqual(lengthView.convert("10", sourceUnitIndex: 3, targetUnitIndex: 4), "6.21371")

            // Test conversion from Miles to Inches
            XCTAssertEqual(lengthView.convert("1", sourceUnitIndex: 4, targetUnitIndex: 5), "63360")

            // Test conversion from Yards to Meters
            XCTAssertEqual(lengthView.convert("3", sourceUnitIndex: 7, targetUnitIndex: 0), "2.7432")
        }

    func testWeightConversion() {
        
        let weightView = UnitConverterView(
            viewTitle: weightCategory.viewTitle,
            viewImageName: weightCategory.viewImageName,
            conversionRates: weightCategory.conversionRates,
            unitNames: weightCategory.unitNames
        )
        
        // Test conversion from Grams to Centigrams
        XCTAssertEqual(weightView.convert("500", sourceUnitIndex: 0, targetUnitIndex: 1), "50000")
        
        // Test conversion from Centigrams to Milligrams
        XCTAssertEqual(weightView.convert("750", sourceUnitIndex: 1, targetUnitIndex: 2), "7500")
        
        // Test conversion from Milligrams to Kilograms
        XCTAssertEqual(weightView.convert("1200", sourceUnitIndex: 2, targetUnitIndex: 3), "0.0012")
        
        // Test conversion from Pounds to Ounces
        XCTAssertEqual(weightView.convert("3", sourceUnitIndex: 4, targetUnitIndex: 5), "48")
    }

}
