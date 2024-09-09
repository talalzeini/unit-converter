//
//  Data.swift
//  UnitConverter
//
//  Created by Talal El Zeini on 9/3/23.
//

// Volume

struct UnitConversionDataModel {

    public let unitConversionData = [

        // Verified
        UnitTypeModel(
            unitType: "Length",
            units: [
                "Meters", "Centimeters", "Millimeters", "Kilometers",
                "Micrometers", "Nanometers", "Miles", "Inches", "Feet", "Yards"
            ],
            unitConversionRates: [
                "Meters": [
                    "Meters": 1.0, // Verified
                    "Centimeters": 100.0, // Verified
                    "Millimeters": 1000.0, // Verified
                    "Kilometers": 0.001, // Verified
                    "Micrometers": 1000_000.0, // Verified
                    "Nanometers": 1_000_000_000.0, // Verified
                    "Miles": 0.0006213689, // Verified
                    "Inches": 39.37007874, // Verified
                    "Feet": 3.280839895, // Verified
                    "Yards": 1.0936132983 // Verified
                ],
                "Centimeters": [
                    "Meters": 0.01, // Verified
                    "Centimeters": 1.0, // Verified
                    "Millimeters": 10.0, // Verified
                    "Kilometers": 0.00001, // Verified
                    "Micrometers": 10_000.0, // Verified
                    "Nanometers": 10000000, // Verified
                    "Miles": 0.0000062137, // Verified
                    "Inches": 0.3937007874, // Verified
                    "Feet": 0.032808399, // Verified
                    "Yards": 0.010936133 // Verified
                ],
                "Millimeters": [
                    "Meters": 0.001, // Verified
                    "Centimeters": 0.1, // Verified
                    "Millimeters": 1.0, // Verified
                    "Kilometers": 0.000001, // Verified
                    "Micrometers": 1000, // Verified
                    "Nanometers": 1000000, // Verified
                    "Miles": 6.213711922e-7, // Verified
                    "Inches": 0.0393700787, // Verified
                    "Feet": 0.0032808399, // Verified
                    "Yards": 0.0010936133 // Verified
                ],
                "Kilometers": [
                    "Meters": 1000.0, // Verified
                    "Centimeters": 100000, // Verified
                    "Millimeters": 1000000, // Verified
                    "Kilometers": 1.0, // Verified
                    "Micrometers": 1000000000, // Verified
                    "Nanometers": 1000000000000, // Verified
                    "Miles": 0.6213711922, // Verified
                    "Inches": 39370.07874, // Verified
                    "Feet": 3280.839895, // Verified
                    "Yards": 1093.6132983 // Verified
                ],
                "Micrometers": [ // Verified
                    "Meters": 0.000001, // Verified
                    "Centimeters": 0.0001, // Verified
                    "Millimeters": 0.001, // Verified
                    "Kilometers": 1.0e-9, // Verified
                    "Nanometers": 1000, // Verified
                    "Miles": 6.213711922e-10, // Verified
                    "Inches": 0.0000393701, // Verified
                    "Feet": 0.0000032808, // Verified
                    "Yards": 0.0000010936, // Verified
                    "Micrometers": 1.0 // Verified
                               ],
                "Nanometers": [
                    "Meters": 1.0e-9, // Verified
                    "Centimeters": 1.0e-7, // Verified
                    "Millimeters": 0.000001, // Verified
                    "Kilometers": 1.0e-12, // Verified
                    "Micrometers": 0.001, // Verified
                    "Miles": 6.213711922e-13, // Verified
                    "Inches": 3.937007874E-8, // Verified
                    "Feet": 3.280839895E-9, // Verified
                    "Yards": 1.093613298E-9, // Verified
                    "Nanometers": 1.0 // Verified
                ],
                "Miles": [
                    "Meters": 1609.344, // Verified
                    "Centimeters": 160934.4, // Verified
                    "Millimeters": 1609344, // Verified
                    "Kilometers": 1.609344, // Verified
                    "Micrometers": 1609344000, // Verified
                    "Nanometers": 1609344000000, // Verified
                    "Miles": 1.0, // Verified
                    "Inches": 63360, // Verified
                    "Feet": 5280, // Verified
                    "Yards": 1760 // Verified
                ],
                "Inches": [
                    "Meters": 0.0254, // Verified
                    "Centimeters": 2.54, // Verified
                    "Millimeters": 25.4, // Verified
                    "Kilometers": 0.0000254, // Verified
                    "Micrometers": 25400, // Verified
                    "Nanometers": 25400000, // Verified
                    "Miles": 0.0000157828, // Verified
                    "Inches": 1.0, // Verified
                    "Feet": 0.0833333333, // Verified
                    "Yards": 0.0277777778 // Verified
                ],
                "Feet": [
                    "Meters": 0.3048, // Verified
                    "Centimeters": 30.48, // Verified
                    "Millimeters": 304.8, // Verified
                    "Kilometers": 0.0003048, // Verified
                    "Micrometers": 304800, // Verified
                    "Nanometers": 304800000, // Verified
                    "Miles": 0.0001893939, // Verified
                    "Inches": 12.0, // Verified
                    "Feet": 1.0, // Verified
                    "Yards": 0.33333333333 // Verified
                ],
                "Yards": [
                    "Meters": 0.9144, // Verified
                    "Centimeters": 91.44, // Verified
                    "Millimeters": 914.4, // Verified
                    "Kilometers": 0.0009144, // Verified
                    "Micrometers": 914400, // Verified
                    "Nanometers": 914400000, // Verified
                    "Miles": 0.0005681818, // Verified
                    "Inches": 36.0, // Verified
                    "Feet": 3.0, // Verified
                    "Yards": 1.0 // Verified
                ]
            ]
        ),

        // Verified
        UnitTypeModel(
            unitType: "Weight",
            units: [
                "Grams", "Centigrams", "Milligrams", "Kilograms",
                "Pounds", "Ounces", "Metric Tons", "Long Tons",
                "Short Tons", "Carat", "Atomic Mass Unit"
            ],
            unitConversionRates: [
                "Grams": [
                    "Grams": 1.0, // Verified
                    "Centigrams": 100.0,
                    "Milligrams": 1000.0, // Verified
                    "Kilograms": 0.001, // Verified
                    "Pounds": 0.0022046244, // Verified
                    "Ounces": 0.0352739619, // Verified
                    "Metric Tons": 0.000001, // Verified
                    "Long Tons": 9.842073304e-7, // Verified
                    "Short Tons": 0.0000011023, // Verified
                    "Carat": 5.0, // Verified
                    "Atomic Mass Unit": 6.022136652e+23 // Verified
                ],
                "Centigrams": [
                    "Grams": 0.01, // Verified
                    "Centigrams": 1.0, // Verified
                    "Milligrams": 10.0, // Verified
                    "Kilograms": 1.0e-5, // Verified
                    "Pounds": 2.2046e-5, // Verified
                    "Ounces": 0.00035274, // Verified
                    "Metric Tons": 1.0e-8, // Verified
                    "Long Tons": 9.84207e-9, // Verified
                    "Short Tons": 1.10231e-8, // Verified
                    "Carat": 0.05, // Verified
                    "Atomic Mass Unit": 6.022136652e+21 // Verified
                ],
                "Milligrams": [
                    "Grams": 0.001, // Verified
                    "Centigrams": 0.1, // Verified
                    "Milligrams": 1.0, // Verified
                    "Kilograms": 0.000001, // Verified
                    "Pounds": 0.0000022046, // Verified
                    "Ounces": 0.000035274, // Verified
                    "Metric Tons": 1.0e-9, // Verified
                    "Long Tons": 9.842065276E-10, // Verified
                    "Short Tons": 1.10231131E-9, // Verified
                    "Carat": 0.005, // Verified
                    "Atomic Mass Unit": 6.0221366516752E+20 // Verified
                ],
                "Kilograms": [
                    "Grams": 1000.0, // Verified
                    "Centigrams": 100000.0, // Verified
                    "Milligrams": 1000000, // Verified
                    "Kilograms": 1.0, // Verified
                    "Pounds": 2.2046226218, // Verified
                    "Ounces": 35.27396195, // Verified
                    "Metric Tons": 0.001, // Verified
                    "Long Tons": 0.0009842065, // Verified
                    "Short Tons": 0.0011023113, // Verified
                    "Carat": 5000, // Verified
                    "Atomic Mass Unit": 6.022136651e+26 // Verified
                ],
                "Pounds": [
                    "Grams": 453.59237, // Verified
                    "Centigrams": 45359.237, // Verified
                    "Milligrams": 453592.37, // Verified
                    "Kilograms": 0.45359237, // Verified
                    "Pounds": 1.0, // Verified
                    "Ounces": 16.0, // Verified
                    "Metric Tons": 0.0004535924, // Verified
                    "Long Tons": 0.0004464286, // Verified
                    "Short Tons": 0.0005, // Verified
                    "Carat": 2267.96185, // Verified
                    "Atomic Mass Unit": 2.731595236E+26 // Verified
                ],
                "Ounces": [
                    "Grams": 28.349523125, // Verified
                    "Centigrams": 2834.9523125, // Verified
                    "Milligrams": 28349.523125, // Verified
                    "Kilograms": 0.0283495231, // Verified
                    "Pounds": 0.0625, // Verified
                    "Ounces": 1.0, // Verified
                    "Metric Tons": 0.0000283495, // Verified
                    "Long Tons": 0.0000279018, // Verified
                    "Short Tons": 0.00003125, // Verified
                    "Carat": 141.74761563, // Verified
                    "Atomic Mass Unit": 1.707247022e+25 // Verified
                ],
                "Metric Tons": [
                    "Grams": 1000000, // Verified
                    "Centigrams": 100000000, // Verified
                    "Milligrams": 1000000000, // Verified
                    "Kilograms": 1000, // Verified
                    "Pounds": 2204.6226218, // Verified
                    "Ounces": 35273.96195, // Verified
                    "Metric Tons": 1.0, // Verified
                    "Long Tons": 0.9842065276, // Verified
                    "Short Tons": 1.1023113109, // Verified
                    "Carat": 5000000, // Verified
                    "Atomic Mass Unit": 6.022136651E+29 // Verified
                ],
                "Long Tons": [
                    "Grams": 1016046.9088, // Verified
                    "Centigrams": 101604690.88, // Verified
                    "Milligrams": 1016046908.8, // Verified
                    "Kilograms": 1016.0469088, // Verified
                    "Pounds": 2240, // Verified
                    "Ounces": 35840, // Verified
                    "Metric Tons": 1.0160469088,
                    "Long Tons": 1.0, // Verified
                    "Short Tons": 1.12, // Verified
                    "Carat": 5080234.544, // Verified
                    "Atomic Mass Unit": 6.118773329e+29 // Verified
                ],
                "Short Tons": [
                    "Grams": 907184.74, // Verified
                    "Centigrams": 90718474, // Verified
                    "Milligrams": 907184740, // Verified
                    "Kilograms": 907.18474, // Verified
                    "Pounds": 2000.0, // Verified
                    "Ounces": 32000.0, // Verified
                    "Metric Tons": 0.90718474, // Verified
                    "Long Tons": 0.8928571429, // Verified
                    "Short Tons": 1.0, // Verified
                    "Carat": 4535923.7, // Verified
                    "Atomic Mass Unit": 5.463190472E+29 // Verified
                ],
                "Carat": [
                    "Grams": 0.2, // Verified
                    "Centigrams": 20.0, // Verified
                    "Milligrams": 200.0, // Verified
                    "Kilograms": 0.0002, // Verified
                    "Pounds": 0.000440925, // Verified
                    "Ounces": 0.0070547981, // Verified
                    "Metric Tons": 2.0e-7, // Verified
                    "Long Tons": 1.96841466e-7, // Verified
                    "Short Tons": 2.20462442e-7, // Verified
                    "Carat": 1.0, // Verified
                    "Atomic Mass Unit": 1.20442733E+23 // Verified
                ],
                "Atomic Mass Unit": [
                    "Grams": 1.660540199E-24, // Verified
                    "Centigrams": 1.660540199e-22, // Verified
                    "Milligrams": 1.660540199e-21, // Verified
                    "Kilograms": 1.660540199e-27, // Verified
                    "Pounds": 3.660867475e-27, // Verified
                    "Ounces": 5.85738796e-26, // Verified
                    "Metric Tons": 1.660540199e-30, // Verified
                    "Long Tons": 1.634315837e-30, // Verified
                    "Short Tons": 1.830433737e-30, // Verified
                    "Carat": 8.302700999e-24, // Verified
                    "Atomic Mass Unit": 1.0 // Verified
                ]
            ]
        ),

        // Verified
        UnitTypeModel(
            unitType: "Temperature",
            units: ["Celsius", "Fahrenheit", "Kelvin"], unitConversionRates: [:]
        ),

        UnitTypeModel(unitType: "Volume", units: ["Liters", "Milliliters", "Cubic Meters", "Cubic Centimeters", "Gallons", "Quarts", "Pints", "Cubic Inches", "Fluid Ounces"], unitConversionRates: [
            "Liters": [
                "Liters": 1.0, // Verified
                "Milliliters": 1000.0, // Verified
                "Cubic Meters": 0.001, // Verified
                "Cubic Centimeters": 1000.0, // Verified
                "Gallons": 0.2641720524, // Verified
                "Quarts": 1.0566882094, // Verified
                "Pints": 2.1133764189, // Verified
                "Cubic Inches": 61.023744095, // Verified
                "Fluid Ounces": 33.814022702, // Verified
            ],
            "Milliliters": [
                "Liters": 0.001, // Verified
                "Milliliters": 1.0, // Verified
                "Cubic Meters": 0.000001, // Verified
                "Cubic Centimeters": 1.0, // Verified
                "Gallons": 0.0002641721, // Verified
                "Quarts": 0.0010566882, // Verified
                "Pints": 0.0021133764, // Verified
                "Cubic Inches": 0.0610237441, // Verified
                "Fluid Ounces": 0.0338140227, // Verified
            ],
            "Cubic Meters": [
                "Liters": 1000.0, // Verified
                "Milliliters": 1000000, // Verified
                "Cubic Meters": 1.0, // Verified
                "Cubic Centimeters": 1000000, // Verified
                "Gallons": 264.17205236, // Verified
                "Quarts": 1056.6882094, // Verified
                "Pints": 2113.3764189, // Verified
                "Cubic Inches": 61023.744095, // Verified
                "Fluid Ounces": 33814.022702, // Verified
            ],
            "Cubic Centimeters": [
                "Liters": 0.001, // Verified
                "Milliliters": 1.0, // Verified
                "Cubic Meters": 0.000001, // Verified
                "Cubic Centimeters": 1.0, // Verified
                "Gallons": 0.0002641721, // Verified
                "Quarts": 0.0010566882, // Verified
                "Pints": 0.0021133764, // Verified
                "Cubic Inches": 0.0610237441, // Verified
                "Fluid Ounces": 0.0338140227, // Verified
            ],
            "Gallons": [
                "Liters": 3.785411784, // Verified
                "Milliliters": 3785.411784, // Verified
                "Cubic Meters": 0.0037854118, // Verified
                "Cubic Centimeters": 3785.411784, // Verified
                "Gallons": 1.0, // Verified
                "Quarts": 4.0, // Verified
                "Pints": 8.0, // Verified
                "Cubic Inches": 231.0, // Verified
                "Fluid Ounces": 128.0, // Verified
            ],
            "Quarts": [
                "Liters": 0.946352946, // Verified
                "Milliliters":946.352946, // Verified
                "Cubic Meters": 0.0009463529, // Verified
                "Cubic Centimeters": 946.352946, // Verified
                "Gallons": 0.25, // Verified
                "Quarts": 1.0, // Verified
                "Pints": 2.0, // Verified
                "Cubic Inches": 57.75, // Verified
                "Fluid Ounces": 32.0, // Verified
            ],
            "Pints": [
                "Liters": 0.473176473, // Verified
                "Milliliters": 473.176473, // Verified
                "Cubic Meters": 0.0004731765, // Verified
                "Cubic Centimeters": 473.176473, // Verified
                "Gallons": 0.125, // Verified
                "Quarts": 0.5, // Verified
                "Pints": 1.0, // Verified
                "Cubic Inches": 28.875,
                "Fluid Ounces": 16.0,
            ],
            "Cubic Inches": [
                "Liters": 0.016387064, // Verified
                "Milliliters": 16.387064, // Verified
                "Cubic Meters": 0.0000163871, // Verified
                "Cubic Centimeters": 16.387064, // Verified
                "Gallons": 0.0043290043, // Verified
                "Quarts": 0.0173160173, // Verified
                "Pints": 0.0346320346, // Verified
                "Cubic Inches": 1.0, // Verified
                "Fluid Ounces": 0.5541125541,
            ],
            "Fluid Ounces": [
                "Liters": 0.0295735296, // Verified
                "Milliliters": 29.573529562, // Verified
                "Cubic Meters": 0.0000295735, // Verified
                "Cubic Centimeters": 29.573529562, // Verified
                "Gallons": 0.0078125, // Verified
                "Quarts": 0.03125, // Verified
                "Pints": 0.0625, // Verified
                "Cubic Inches": 1.8046875, // Verified
                "Fluid Ounces": 1.0, // Verified
            ]
        ]),

        // Verified
        UnitTypeModel(unitType: "Time", units: ["Seconds", "Minutes", "Hours", "Days", "Weeks", "Months", "Years"], unitConversionRates: [
            "Seconds": [
                "Seconds": 1.0, // Verified
                "Minutes": 0.0166666667, // Verified
                "Hours": 0.0002777778, // Verified
                "Days": 0.0000115741, // Verified
                "Weeks": 0.0000016534, // Verified
                "Months": 3.805175038e-7, // Verified
                "Years": 3.168808781e-8, // Verified
            ],
            "Minutes": [
                "Seconds": 60.0, // Verified
                "Minutes": 1.0, // Verified
                "Hours": 0.0166666667, // Verified
                "Days": 0.0006944444, // Verified
                "Weeks": 0.0000992063, // Verified
                "Months": 0.0000228311, // Verified
                "Years": 0.0000019013, // Verified
            ],
            "Hours": [
                "Seconds": 3600.0, // Verified
                "Minutes": 60.0, // Verified
                "Hours": 1.0, // Verified
                "Days": 0.0416666667, // Verified
                "Weeks": 0.005952381, // Verified
                "Months": 0.001369863, // Verified
                "Years": 0.0001140771, // Verified
            ],
            "Days": [
                "Seconds": 86400.0, // Verified
                "Minutes": 1440.0, // Verified
                "Hours": 24.0, // Verified
                "Days": 1.0, // Verified
                "Weeks": 0.1428571429, // Verified
                "Months": 0.0328767123, // Verified
                "Years": 0.0027378508, // Verified
            ],
            "Weeks": [
                "Seconds": 604800.0, // Verified
                "Minutes": 10080.0, // Verified
                "Hours": 168.0, // Verified
                "Days": 7.0, // Verified
                "Weeks": 1.0, // Verified
                "Months": 0.2301369863, // Verified
                "Years": 0.0191649555, // Verified
            ],
            "Months": [
                "Seconds": 2628000, // Verified
                "Minutes": 43800.0, // Verified
                "Hours": 730.0, // Verified
                "Days": 30.416666667, // Verified
                "Weeks": 4.3452380952, // Verified
                "Months": 1.0, // Verified
                "Years": 0.0832762948, // Verified
            ],
            "Years": [
                "Seconds": 31557600, // Verified
                "Minutes": 525960, // Verified
                "Hours": 8766, // Verified
                "Days": 365.25, // Verified
                "Weeks": 52.178571429, // Verified
                "Months": 12.0, // Verified
                "Years": 12.008219178, // Verified
            ]
        ]),
        // Verified
        UnitTypeModel(unitType: "Speed", units: ["Meters per Second", "Kilometers per Hour", "Miles per Hour", "Feet per Second"], unitConversionRates: [
            "Meters per Second": [
                "Meters per Second": 1.0, // Verified
                "Kilometers per Hour": 3.6, // Verified
                "Miles per Hour": 2.2369362921, // Verified
                "Feet per Second": 3.280839895 // Verified
            ],
            "Kilometers per Hour": [
                "Meters per Second": 0.2777777778, // Verified
                "Kilometers per Hour": 1.0, // Verified
                "Miles per Hour": 0.6213711922, // Verified
                "Feet per Second": 0.9113444153 // Verified
            ],
            "Miles per Hour": [
                "Meters per Second": 0.44704, // Verified
                "Kilometers per Hour": 1.609344, // Verified
                "Miles per Hour": 1.0, // Verified
                "Feet per Second": 1.4666666667 // Verified
            ],
            "Feet per Second": [
                "Meters per Second": 0.3048, // Verified
                "Kilometers per Hour": 1.09728, // Verified
                "Miles per Hour": 0.6818181818, // Verified
                "Feet per Second": 1.0 // Verified
            ]
        ]),

        // Verified
        UnitTypeModel(unitType: "Pressure", units: ["Pascals", "Bars", "Atmospheres", "Pounds per Square Inch", "Kilopascals"], unitConversionRates: [
            "Pascals": [
                "Pascals": 1.0, // Verified
                "Bars": 0.00001, // Verified
                "Atmospheres": 9.86923e-6, // Verified
                "Pounds per Square Inch": 0.0001450377, // Verified
                "Kilopascals": 0.001 // Verified
            ],
            "Bars": [
                "Pascals": 100000, // Verified
                "Bars": 1.0, // Verified
                "Atmospheres": 0.9869232667, // Verified
                "Pounds per Square Inch": 14.503773773, // Verified
                "Kilopascals": 100.0 // Verified
            ],
            "Atmospheres": [
                "Pascals": 101325, // Verified
                "Bars": 1.01325, // Verified
                "Atmospheres": 1.0, // Verified
                "Pounds per Square Inch": 14.695948775, // Verified
                "Kilopascals": 101.325 // Verified
            ],
            "Pounds per Square Inch": [
                "Pascals": 6894.7572932, // Verified
                "Bars": 0.0689475729, // Verified
                "Atmospheres": 0.0680459639,
                "Pounds per Square Inch": 1.0, // Verified
                "Kilopascals": 6.8947572932 // Verified
            ],
            "Kilopascals": [
                "Pascals": 1000.0, // Verified
                "Bars": 0.01, // Verified
                "Atmospheres": 0.0098692327, // Verified
                "Pounds per Square Inch": 0.1450377377, // Verified
                "Kilopascals": 1.0 // Verified
            ]
        ]),

        // Verified
        UnitTypeModel(unitType: "Frequency", units: ["Hertz", "Kilohertz", "Megahertz", "Gigahertz"], unitConversionRates: [
            "Hertz": [
                "Hertz": 1.0, // Verified
                "Kilohertz": 0.001, // Verified
                "Megahertz": 1.0e-6, // Verified
                "Gigahertz": 1.0e-9 // Verified
            ],
            "Kilohertz": [
                "Hertz": 1000.0, // Verified
                "Kilohertz": 1.0, // Verified
                "Megahertz": 0.001, // Verified
                "Gigahertz": 1.0e-6 // Verified
            ],
            "Megahertz": [
                "Hertz": 1.0e6, // Verified
                "Kilohertz": 1000.0, // Verified
                "Megahertz": 1.0, // Verified
                "Gigahertz": 0.001 // Verified
            ],
            "Gigahertz": [
                "Hertz": 1.0e9, // Verified
                "Kilohertz": 1.0e6, // Verified
                "Megahertz": 1000.0, // Verified
                "Gigahertz": 1.0 // Verified
            ]
        ]),

        // Verified
        UnitTypeModel(unitType: "Energy", units: ["Joules", "Calories (IT)", "Kilojoules", "Watt-Hours", "Kilowatt-Hours"], unitConversionRates: [
            "Joules": [
                "Joules": 1.0, // Verified
                "Calories (IT)": 0.2388458966, // Verified
                "Kilojoules": 0.001, // Verified
                "Watt-Hours": 0.0002777778, // Verified
                "Kilowatt-Hours": 2.777777777E-7 // Verified
            ],
            "Calories (IT)": [
                "Joules": 4.1868, // Verified
                "Calories (IT)": 1.0, // Verified
                "Kilojoules": 0.0041868, // Verified
                "Watt-Hours": 0.001163, // Verified
                "Kilowatt-Hours": 0.000001163 // Verified
            ],
            "Kilojoules": [
                "Joules": 1000.0, // Verified
                "Calories (IT)": 238.84589663, // Verified
                "Kilojoules": 1.0, // Verified
                "Watt-Hours": 0.2777777778, // Verified
                "Kilowatt-Hours": 0.0002777778 // Verified
            ],
            "Watt-Hours": [
                "Joules": 3600.0, // Verified
                "Calories (IT)": 859.84522786, // Verified
                "Kilojoules": 3.6, // Verified
                "Watt-Hours": 1.0, // Verified
                "Kilowatt-Hours": 0.001 // Verified
            ],
            "Kilowatt-Hours": [
                "Joules": 3600000, // Verified
                "Calories (IT)": 859845.22786, // Verified
                "Kilojoules": 3600.0, // Verified
                "Watt-Hours": 1000.0, // Verified
                "Kilowatt-Hours": 1.0 // Verified
            ]
        ]),

        // Verified
        UnitTypeModel(
            unitType: "Digital Storage",
            units: ["Bytes", "Kilobytes", "Megabytes", "Gigabytes"],
            unitConversionRates: [
                "Bytes": [
                    "Bytes": 1.0,
                    "Kilobytes": 0.0009765625, // Verified
                    "Megabytes": 9.536743164E-7, // Verified
                    "Gigabytes": 9.313225746E-10 // Verified
                ],
                "Kilobytes": [
                    "Bytes": 1024.0, // Verified
                    "Kilobytes": 1.0, // Verified
                    "Megabytes": 0.0009765625, // Verified
                    "Gigabytes": 9.536743164E-7, // Verified
                ],
                "Megabytes": [
                    "Bytes": 1048576, // Verified
                    "Kilobytes": 1024.0, // Verified
                    "Megabytes": 1.0, // Verified
                    "Gigabytes": 0.0009765625 // Verified
                ],
                "Gigabytes": [
                    "Bytes": 1073741824, // Verified
                    "Kilobytes": 1048576, // Verified
                    "Megabytes": 1024.0, // Verified
                    "Gigabytes": 1.0 // Verified
                ]
            ]
        ),

        // Verified
        UnitTypeModel(unitType: "Power", units: ["Watts", "Kilowatts", "Megawatts", "Horsepower"], unitConversionRates: [
            "Watts": [
                "Watts": 1.0, // Verified
                "Kilowatts": 0.001, // Verified
                "Megawatts": 1.0e-6, // Verified
                "Horsepower": 0.0013410220896 // Verified
            ],
            "Kilowatts": [
                "Watts": 1000.0, // Verified
                "Kilowatts": 1.0, // Verified
                "Megawatts": 1.0e-3, // Verified
                "Horsepower": 1.3410220896 // Verified
            ],
            "Megawatts": [
                "Watts": 1.0e6, // Verified
                "Kilowatts": 1000.0, // Verified
                "Megawatts": 1.0, // Verified
                "Horsepower": 1341.0220896 // Verified
            ],
            "Horsepower": [
                "Watts": 745.69987158, // Verified
                "Kilowatts": 0.7456998716, // Verified
                "Megawatts": 0.0007456999, // Verified
                "Horsepower": 1.0 // Verified
            ]
        ]),

        // Verified
        UnitTypeModel(unitType: "Force", units: ["Newtons", "Pounds-force", "Kilograms-force"], unitConversionRates: [
            "Newtons": [
                "Newtons": 1.0, // Verified
                "Pounds-force": 0.2248089431, // Verified
                "Kilograms-force": 0.1019716213 // Verified
            ],
            "Pounds-force": [
                "Newtons": 4.4482216153, // Verified
                "Pounds-force": 1.0, // Verified
                "Kilograms-force": 0.45359237 // Verified
            ],
            "Kilograms-force": [
                "Newtons": 9.80665, // Verified
                "Pounds-force": 2.2046226219, // Verified
                "Kilograms-force": 1.0 // Verified
            ]
        ]),

        // Verified
        UnitTypeModel(unitType: "Area", units: ["Square Meters", "Square Kilometers", "Acres", "Hectares", "Square Feet", "Square Yards"], unitConversionRates: [
            "Square Meters": [
                "Square Meters": 1.0, // Verified
                "Square Kilometers": 0.000001, // Verified
                "Acres": 0.0002471054, // Verified
                "Hectares": 0.0001, // Verified
                "Square Feet": 10.763910417, // Verified
                "Square Yards": 1.1959900463 // Verified
            ],
            "Square Kilometers": [
                "Square Meters": 1000000, // Verified
                "Square Kilometers": 1.0, // Verified
                "Acres": 247.10538147, // Verified
                "Hectares": 100.0, // Verified
                "Square Feet": 10763910.417, // Verified
                "Square Yards": 1195990.0463 // Verified
            ],
            "Acres": [
                "Square Meters": 4046.8564224, // Verified
                "Square Kilometers": 0.0040468564, // Verified
                "Acres": 1.0, // Verified
                "Hectares": 0.4046856422, // Verified
                "Square Feet": 43560, // Verified
                "Square Yards": 4840 // Verified
            ],
            "Hectares": [
                "Square Meters": 10000.0, // Verified
                "Square Kilometers": 0.01, // Verified
                "Acres": 2.4710538147, // Verified
                "Hectares": 1.0, // Verified
                "Square Feet": 107639.10417, // Verified
                "Square Yards": 11959.900463 // Verified
            ],
            "Square Feet": [
                "Square Meters": 0.09290304, // Verified
                "Square Kilometers": 9.290303999E-8, // Verified
                "Acres": 0.0000229568, // Verified
                "Hectares": 0.0000092903, // Verified
                "Square Feet": 1.0, // Verified
                "Square Yards": 0.1111111111 // Verified
            ],
            "Square Yards": [
                "Square Meters": 0.83612736, // Verified
                "Square Kilometers": 8.361273599E-7, // Verified
                "Acres": 0.0002066116, // Verified
                "Hectares": 0.0000836127, // Verified
                "Square Feet": 9.0, // Verified
                "Square Yards": 1.0 // Verified
            ]
        ])
    ]
}
