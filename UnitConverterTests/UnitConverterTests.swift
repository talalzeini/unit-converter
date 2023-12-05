//
//  UnitConverterTests.swift
//  UnitConverterTests
//
//  Created by Talal El Zeini on 12/4/23.
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

    func testExample() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.tabBars.buttons["Weight"].tap()
        
        let textField = app.textFields.element
        XCTAssertTrue(textField.exists)

        // Tap on the TextField
        textField.tap()
        
        // Clear existing text and enter "2"
        textField.clearText()
        textField.typeText("2")
        
        let result = app.staticTexts["200 Centigrams"]
        XCTAssertTrue(result.exists)
    }

}
