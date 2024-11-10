# Ultimate Unit Converter Pro

<img src="/UnitConverter/Assets.xcassets/AppIcon.appiconset/logo.png"  width="120" height="120">

The Unit Converter app is now available on the App Store! Download and install it on your iOS device to simplify your unit conversions.

[Download](https://apps.apple.com/us/app/ultimate-unit-converter-pro/id6463096286)

## Overview

The Unit Converter app is a simple utility for converting various units of measurement. It provides conversions for length, weight, temperature, volume, and time. Users can easily input values and select units to convert between.

## Features

- Conversion for multiple unit categories: Length, Weight, Temperature, Volume, and Time.
- Intuitive user interface with pickers and text fields for input.
- Real-time conversion results displayed to the user.

## Getting Started

To run the Unit Converter app, follow these steps:

1. Open the Xcode project file (`UnitConverter.xcodeproj`) in Xcode.
2. Build and run the app on a simulator or physical device.

## Project Structure

The project is organized as follows:

### 1. **Core Logic**

- **UnitConverterApp.swift**: The main app module containing the entry point and the SwiftUI `App` structure that sets up the overall app environment.
- **UnitConverterView.swift**: The main SwiftUI view for the unit conversion screen, where users can input values and select units for conversion.
- **UnitConverterViewModel.swift**: ViewModel responsible for handling the logic of unit conversions and data binding between the model and the view.

### 2. **Models**

- **UnitTypeModel.swift**: Defines the data structure for each unit category (e.g., Length, Weight, Temperature) and their corresponding units.
- **UnitConversionDataModel.swift**: Contains the conversion rates and unit data for each unit type. This model provides the conversion rates for length, weight, temperature, and other units.

### 3. **Extensions & Helpers**

- **Double+Formatting.swift**: Provides a method to format a double as a string with trailing zeros removed.
- **String+DoubleConversion.swift**: Extends `String` with a property to convert a string to a `Double`, handling different decimal separators.

### 4. **Testing**

- **UnitConverterUITests.swift**: Contains UI tests for the app, ensuring that unit conversions are performed correctly. Includes test cases for verifying the app's behavior when entering input values and checking the conversion results.
- **UnitConverterUnitTests.swift**: Contains unit tests for the conversion logic in the app. It ensures that the core unit conversion calculations are accurate and handle edge cases properly.
