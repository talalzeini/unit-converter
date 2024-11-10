//
//  UnitConverterUITests.swift
//  UnitConverterUITests
//
//  Created by Talal El Zeini on 8/27/24.
//

import XCTest

extension XCUIElement {
    func clearText() {
        guard let stringValue = value as? String else {
            return
        }

        if !stringValue.isEmpty {
            let deleteString = String(repeating: XCUIKeyboardKey.delete.rawValue, count: stringValue.count)
            typeText(deleteString)
        }
    }
}

final class UnitConverterTests: XCTestCase {

    let app = XCUIApplication()

    let decimalPadIndex = 1

    let testCases: [String: String] = [
        "0.5": "50 Centimeters",
        "1.25": "125 Centimeters",
        "2.75": "275 Centimeters",
        "3.6": "360 Centimeters",
        "4.2": "420 Centimeters",
        "5.8": "580 Centimeters",
        "7.3": "730 Centimeters",
        "8.9": "890 Centimeters",
        "9.1": "910 Centimeters",
        "10.5": "1050 Centimeters",
        "00000": "0 Centimeters",
        "153.002000": "15300.2 Centimeters",
        "00000.1": "10 Centimeters",
        "00000.100500": "10.05 Centimeters",
        "": ""
    ]

    func enterTextFieldInput(inputValue: String) throws {
        let textField = app.textFields.element(boundBy: 0)
        XCTAssertTrue(textField.exists, "The text field should exist.")

        textField.tap()
        textField.clearText()
        textField.typeText(inputValue)
    }

    func testConversion(expectedResult: String) throws {
        let conversionTextElement = app.textFields.element(boundBy: 1)

        XCTAssertNotNil(conversionTextElement, "The conversion text should be displayed.")

        print("Conversion text: \(conversionTextElement.value!)")

        XCTAssertEqual(conversionTextElement.value as! String, expectedResult, "The result should be '\(expectedResult)'.")
    }

    func tapButton(index: Int) throws {
        XCTAssertTrue(app.buttons.element(boundBy: 1).exists, "The button should exist.")
        app.buttons.element(boundBy: index).tap()
    }

    func testConversions() throws {
        app.launch()
        for (inputValue, expectedResult) in testCases {
            if inputValue != "" {
                try enterTextFieldInput(inputValue: inputValue)

                try testConversion(expectedResult: expectedResult)
                
                // Close the decimal pad
                try tapButton(index: decimalPadIndex)
            }
        }
    }
}
