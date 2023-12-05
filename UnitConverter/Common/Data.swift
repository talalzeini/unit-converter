//
//  Data.swift
//  UnitConverter
//
//  Created by Talal El Zeini on 9/3/23.
//

struct UnitCategory: Hashable {
    let viewTitle: String
    let viewImageName: String
    let unitNames: [String]
    let conversionRates: [String: [String: Double]]
}

struct Data {
    
    public let unitCategories = [
        
        UnitCategory(viewTitle: "Length", viewImageName: "ruler", unitNames: ["Meters", "Centimeters", "Millimeters", "Kilometers", "Miles", "Inches", "Feet", "Yards"], conversionRates: [
            "Meters": [
                "Meters": 1.0,
                "Centimeters": 100.0,
                "Millimeters": 1000.0,
                "Kilometers": 0.001,
                "Miles": 0.000621371,
                "Inches": 39.3700629921,
                "Feet": 3.28084,
                "Yards": 1.09361
            ],
            "Centimeters":
                [
                    "Meters": 0.01,
                    "Centimeters": 1.0,
                    "Millimeters": 10.0,
                    "Kilometers": 0.00001,
                    "Miles": 6.21371e-6,
                    "Inches": 0.3937007874,
                    "Feet": 0.03280839895,
                    "Yards": 0.01093613298
                ],
            "Millimeters":
                [
                    "Meters": 0.001,
                    "Centimeters": 0.1,
                    "Millimeters": 1.0,
                    "Kilometers": 1.0e-6,
                    "Miles": 6.2137e-7,
                    "Inches": 0.03937007874,
                    "Feet": 0.003280839895,
                    "Yards": 0.001093613298
                ],
            "Kilometers":
                [
                    "Meters": 1000.0,
                    "Centimeters": 100000.0,
                    "Millimeters": 1000000.0,
                    "Kilometers": 1.0,
                    "Miles": 0.621371,
                    "Inches": 39370.1,
                    "Feet": 3280.84,
                    "Yards": 1093.61
                ],
            "Miles":
                [
                    "Meters": 1609.34,
                    "Centimeters": 160934,
                    "Millimeters": 1609340,
                    "Kilometers": 1.60934,
                    "Miles": 1.0,
                    "Inches": 63360,
                    "Feet": 5280,
                    "Yards": 1760
                ],
            "Inches":
                [
                    "Meters": 0.0254,
                    "Centimeters": 2.54,
                    "Millimeters": 25.4,
                    "Kilometers": 2.54e-5,
                    "Miles": 1.5783e-5,
                    "Inches": 1.0,
                    "Feet": 0.0833333,
                    "Yards": 0.0277778
                ],
            "Feet":
                [
                    "Meters": 0.3048,
                    "Centimeters": 30.48,
                    "Millimeters": 304.8,
                    "Kilometers": 3.048e-4,
                    "Miles": 0.000189394,
                    "Inches": 12.0,
                    "Feet": 1.0,
                    "Yards": 0.333333
                ],
            "Yards":
                [
                    "Meters": 0.9144,
                    "Centimeters": 91.44,
                    "Millimeters": 914.4,
                    "Kilometers": 0.0009144,
                    "Miles": 0.000568182,
                    "Inches": 36.0,
                    "Feet": 3.0,
                    "Yards": 1.0
                ]
        ]),
        
        UnitCategory(viewTitle: "Weight", viewImageName: "scalemass", unitNames: ["Grams", "Centigrams", "Milligrams", "Kilograms", "Pounds", "Ounces"], conversionRates: [
            "Grams": [
                "Grams": 1.0,
                "Centigrams": 100.0,
                "Milligrams": 1000.0,
                "Kilograms": 0.001,
                "Pounds": 0.00220462,
                "Ounces": 0.03527396
            ],
            "Centigrams": [
                "Grams": 0.01,
                "Centigrams": 1.0,
                "Milligrams": 10.0,
                "Kilograms": 1.0e-5,
                "Pounds": 2.20462e-5,
                "Ounces": 0.00035274
            ],
            "Milligrams": [
                "Grams": 0.001,
                "Centigrams": 0.1,
                "Milligrams": 1.0,
                "Kilograms": 1.0e-6,
                "Pounds": 2.20462e-6,
                "Ounces": 3.527396e-5
            ],
            "Kilograms": [
                "Grams": 1000.0,
                "Centigrams": 100000.0,
                "Milligrams": 1.0e+6,
                "Kilograms": 1.0,
                "Pounds": 2.20462,
                "Ounces": 35.27396
            ],
            "Pounds": [
                "Grams": 453.592,
                "Centigrams": 45359.2,
                "Milligrams": 453592.0,
                "Kilograms": 0.453592,
                "Pounds": 1.0,
                "Ounces": 16.0
            ],
            "Ounces": [
                "Grams": 28.3495,
                "Centigrams": 2834.95,
                "Milligrams": 28349.5,
                "Kilograms": 0.0283495,
                "Pounds": 0.0625,
                "Ounces": 1.0
            ]
       ]),
        
        UnitCategory(viewTitle: "Temperature", viewImageName: "thermometer", unitNames: ["Celsius", "Fahrenheit", "Kelvin"], conversionRates: [:]),
        
        UnitCategory(viewTitle: "Volume", viewImageName: "drop", unitNames: ["Liters", "Milliliters", "Cubic Meters", "Cubic Centimeters", "Gallons", "Quarts", "Pints"], conversionRates: [
            "Liters": [
                "Liters": 1.0,
                "Milliliters": 1000.0,
                "Cubic Meters": 0.001,
                "Cubic Centimeters": 1000.0,
                "Gallons": 0.264172,
                "Quarts": 1.05669,
                "Pints": 2.11338,
                "Fluid Ounces": 33.814,
            ],
            "Milliliters": [
                "Liters": 0.001,
                "Milliliters": 1.0,
                "Cubic Meters": 1.0e-6,
                "Cubic Centimeters": 1.0,
                "Gallons": 0.000264172,
                "Quarts": 0.00105669,
                "Pints": 0.00211338,
                "Fluid Ounces": 0.033814,
            ],
            "Cubic Meters": [
                "Liters": 1000.0,
                "Milliliters": 1.0e+6,
                "Cubic Meters": 1.0,
                "Cubic Centimeters": 1.0e+6,
                "Gallons": 264.172,
                "Quarts": 1056.69,
                "Pints": 2113.38,
                "Fluid Ounces": 33814.0,
            ],
            "Cubic Centimeters": [
                "Liters": 0.001,
                "Milliliters": 1.0,
                "Cubic Meters": 1.0e-6,
                "Cubic Centimeters": 1.0,
                "Gallons": 0.000264172,
                "Quarts": 0.00105669,
                "Pints": 0.00211338,
                "Fluid Ounces": 0.033814,
            ],
            "Gallons": [
                "Liters": 3.78541,
                "Milliliters": 3785.41,
                "Cubic Meters": 0.00378541,
                "Cubic Centimeters": 3785.41,
                "Gallons": 1.0,
                "Quarts": 4.0,
                "Pints": 8.0,
                "Fluid Ounces": 128.0,
            ],
            "Quarts": [
                "Liters": 0.946353,
                "Milliliters": 946.353,
                "Cubic Meters": 0.000946353,
                "Cubic Centimeters": 946.353,
                "Gallons": 0.25,
                "Quarts": 1.0,
                "Pints": 2.0,
                "Fluid Ounces": 32.0,
            ],
            "Pints": [
                "Liters": 0.473176,
                "Milliliters": 473.176,
                "Cubic Meters": 0.000473176,
                "Cubic Centimeters": 473.176,
                "Gallons": 0.125,
                "Quarts": 0.5,
                "Pints": 1.0,
                "Fluid Ounces": 16.0,
            ]
        ]),
        
        UnitCategory(viewTitle: "Time", viewImageName: "clock", unitNames: ["Seconds", "Minutes", "Hours", "Days", "Weeks", "Months", "Years"], conversionRates: [
            "Seconds": [
                "Seconds": 1.0,
                "Minutes": 1.0 / 60.0,
                "Hours": 1.0 / 3600.0,
                "Days": 1.0 / 86400.0,
                "Weeks": 1.0 / 604800.0,
                "Months": 1.0 / 2628000.0,
                "Years": 1.0 / 31536000.0,
            ],
            "Minutes": [
                "Seconds": 60.0,
                "Minutes": 1.0,
                "Hours": 1.0 / 60.0,
                "Days": 1.0 / 1440.0,
                "Weeks": 1.0 / 10080.0,
                "Months": 1.0 / 43800.0,
                "Years": 1.0 / 525600.0,
            ],
            "Hours": [
                "Seconds": 3600.0,
                "Minutes": 60.0,
                "Hours": 1.0,
                "Days": 1.0 / 24.0,
                "Weeks": 1.0 / 168.0,
                "Months": 1.0 / 730.0,
                "Years": 1.0 / 8760.0,
            ],
            "Days": [
                "Seconds": 86400.0,
                "Minutes": 1440.0,
                "Hours": 24.0,
                "Days": 1.0,
                "Weeks": 1.0 / 7.0,
                "Months": 1.0 / 30.44,
                "Years": 1.0 / 365.0,
            ],
            "Weeks": [
                "Seconds": 604800.0,
                "Minutes": 10080.0,
                "Hours": 168.0,
                "Days": 7.0,
                "Weeks": 1.0,
                "Months": 1.0 / 4.35,
                "Years": 1.0 / 52.14,
            ],
            "Months": [
                "Seconds": 2628000.0,
                "Minutes": 43800.0,
                "Hours": 730.0,
                "Days": 30.44,
                "Weeks": 4.35,
                "Months": 1.0,
                "Years": 1.0 / 12.0,
            ],
            "Years": [
                "Seconds": 31536000.0,
                "Minutes": 525600.0,
                "Hours": 8760.0,
                "Days": 365.0,
                "Weeks": 52.14,
                "Months": 12.0,
                "Years": 1.0,
            ]
        ])
    ]
}
