//
//  Data.swift
//  UnitConverter
//
//  Created by Talal El Zeini on 9/3/23.
//

struct UnitConversionDataModel {

    public let unitConversionData = [
        UnitTypeModel(
            unitType: "Length",
            units: [
                "Meters", "Centimeters", "Millimeters", "Kilometers",
                "Micrometers", "Nanometers", "Miles", "Inches", "Feet", "Yards"
            ],
            unitConversionRates: [
                "Meters": [
                    "Meters": 1.0,
                    "Centimeters": 100.0,
                    "Millimeters": 1000.0,
                    "Kilometers": 0.001,
                    "Micrometers": 1000_000.0,
                    "Nanometers": 1_000_000_000.0,
                    "Miles": 0.0006213689,
                    "Inches": 39.37007874,
                    "Feet": 3.280839895,
                    "Yards": 1.0936132983
                ],
                "Centimeters": [
                    "Meters": 0.01,
                    "Centimeters": 1.0,
                    "Millimeters": 10.0,
                    "Kilometers": 0.00001,
                    "Micrometers": 10_000.0,
                    "Nanometers": 10000000,
                    "Miles": 0.0000062137,
                    "Inches": 0.3937007874,
                    "Feet": 0.032808399,
                    "Yards": 0.010936133
                ],
                "Millimeters": [
                    "Meters": 0.001,
                    "Centimeters": 0.1,
                    "Millimeters": 1.0,
                    "Kilometers": 0.000001,
                    "Micrometers": 1000,
                    "Nanometers": 1000000,
                    "Miles": 6.213711922e-7,
                    "Inches": 0.0393700787,
                    "Feet": 0.0032808399,
                    "Yards": 0.0010936133
                ],
                "Kilometers": [
                    "Meters": 1000.0,
                    "Centimeters": 100000,
                    "Millimeters": 1000000,
                    "Kilometers": 1.0,
                    "Micrometers": 1000000000,
                    "Nanometers": 1000000000000,
                    "Miles": 0.6213711922,
                    "Inches": 39370.07874,
                    "Feet": 3280.839895,
                    "Yards": 1093.6132983
                ],
                "Micrometers": [
                    "Meters": 0.000001,
                    "Centimeters": 0.0001,
                    "Millimeters": 0.001,
                    "Kilometers": 1.0e-9,
                    "Nanometers": 1000,
                    "Miles": 6.213711922e-10,
                    "Inches": 0.0000393701,
                    "Feet": 0.0000032808,
                    "Yards": 0.0000010936,
                    "Micrometers": 1.0
                ],
                "Nanometers": [
                    "Meters": 1.0e-9,
                    "Centimeters": 1.0e-7,
                    "Millimeters": 0.000001,
                    "Kilometers": 1.0e-12,
                    "Micrometers": 0.001,
                    "Miles": 6.213711922e-13,
                    "Inches": 3.937007874E-8,
                    "Feet": 3.280839895E-9,
                    "Yards": 1.093613298E-9,
                    "Nanometers": 1.0
                ],
                "Miles": [
                    "Meters": 1609.344,
                    "Centimeters": 160934.4,
                    "Millimeters": 1609344,
                    "Kilometers": 1.609344,
                    "Micrometers": 1609344000,
                    "Nanometers": 1609344000000,
                    "Miles": 1.0,
                    "Inches": 63360,
                    "Feet": 5280,
                    "Yards": 1760
                ],
                "Inches": [
                    "Meters": 0.0254,
                    "Centimeters": 2.54,
                    "Millimeters": 25.4,
                    "Kilometers": 0.0000254,
                    "Micrometers": 25400,
                    "Nanometers": 25400000,
                    "Miles": 0.0000157828,
                    "Inches": 1.0,
                    "Feet": 0.0833333333,
                    "Yards": 0.0277777778
                ],
                "Feet": [
                    "Meters": 0.3048,
                    "Centimeters": 30.48,
                    "Millimeters": 304.8,
                    "Kilometers": 0.0003048,
                    "Micrometers": 304800,
                    "Nanometers": 304800000,
                    "Miles": 0.0001893939,
                    "Inches": 12.0,
                    "Feet": 1.0,
                    "Yards": 0.33333333333
                ],
                "Yards": [
                    "Meters": 0.9144,
                    "Centimeters": 91.44,
                    "Millimeters": 914.4,
                    "Kilometers": 0.0009144,
                    "Micrometers": 914400,
                    "Nanometers": 914400000,
                    "Miles": 0.0005681818,
                    "Inches": 36.0,
                    "Feet": 3.0,
                    "Yards": 1.0
                ]
            ]
        ),
        UnitTypeModel(
            unitType: "Weight",
            units: [
                "Grams", "Centigrams", "Milligrams", "Kilograms",
                "Pounds", "Ounces", "Metric Tons", "Long Tons",
                "Short Tons", "Carat", "Atomic Mass Unit"
            ],
            unitConversionRates: [
                "Grams": [
                    "Grams": 1.0,
                    "Centigrams": 100.0,
                    "Milligrams": 1000.0,
                    "Kilograms": 0.001,
                    "Pounds": 0.0022046244,
                    "Ounces": 0.0352739619,
                    "Metric Tons": 0.000001,
                    "Long Tons": 9.842073304e-7,
                    "Short Tons": 0.0000011023,
                    "Carat": 5.0,
                    "Atomic Mass Unit": 6.022136652e+23
                ],
                "Centigrams": [
                    "Grams": 0.01,
                    "Centigrams": 1.0,
                    "Milligrams": 10.0,
                    "Kilograms": 1.0e-5,
                    "Pounds": 2.2046e-5,
                    "Ounces": 0.00035274,
                    "Metric Tons": 1.0e-8,
                    "Long Tons": 9.84207e-9,
                    "Short Tons": 1.10231e-8,
                    "Carat": 0.05,
                    "Atomic Mass Unit": 6.022136652e+21
                ],
                "Milligrams": [
                    "Grams": 0.001,
                    "Centigrams": 0.1,
                    "Milligrams": 1.0,
                    "Kilograms": 0.000001,
                    "Pounds": 0.0000022046,
                    "Ounces": 0.000035274,
                    "Metric Tons": 1.0e-9,
                    "Long Tons": 9.842065276E-10,
                    "Short Tons": 1.10231131E-9,
                    "Carat": 0.005,
                    "Atomic Mass Unit": 6.0221366516752E+20
                ],
                "Kilograms": [
                    "Grams": 1000.0,
                    "Centigrams": 100000.0,
                    "Milligrams": 1000000,
                    "Kilograms": 1.0,
                    "Pounds": 2.2046226218,
                    "Ounces": 35.27396195,
                    "Metric Tons": 0.001,
                    "Long Tons": 0.0009842065,
                    "Short Tons": 0.0011023113,
                    "Carat": 5000,
                    "Atomic Mass Unit": 6.022136651e+26
                ],
                "Pounds": [
                    "Grams": 453.59237,
                    "Centigrams": 45359.237,
                    "Milligrams": 453592.37,
                    "Kilograms": 0.45359237,
                    "Pounds": 1.0,
                    "Ounces": 16.0,
                    "Metric Tons": 0.0004535924,
                    "Long Tons": 0.0004464286,
                    "Short Tons": 0.0005,
                    "Carat": 2267.96185,
                    "Atomic Mass Unit": 2.731595236E+26
                ],
                "Ounces": [
                    "Grams": 28.349523125,
                    "Centigrams": 2834.9523125,
                    "Milligrams": 28349.523125,
                    "Kilograms": 0.0283495231,
                    "Pounds": 0.0625,
                    "Ounces": 1.0,
                    "Metric Tons": 0.0000283495,
                    "Long Tons": 0.0000279018,
                    "Short Tons": 0.00003125,
                    "Carat": 141.74761563,
                    "Atomic Mass Unit": 1.707247022e+25
                ],
                "Metric Tons": [
                    "Grams": 1000000,
                    "Centigrams": 100000000,
                    "Milligrams": 1000000000,
                    "Kilograms": 1000,
                    "Pounds": 2204.6226218,
                    "Ounces": 35273.96195,
                    "Metric Tons": 1.0,
                    "Long Tons": 0.9842065276,
                    "Short Tons": 1.1023113109,
                    "Carat": 5000000,
                    "Atomic Mass Unit": 6.022136651E+29
                ],
                "Long Tons": [
                    "Grams": 1016046.9088,
                    "Centigrams": 101604690.88,
                    "Milligrams": 1016046908.8,
                    "Kilograms": 1016.0469088,
                    "Pounds": 2240,
                    "Ounces": 35840,
                    "Metric Tons": 1.0160469088,
                    "Long Tons": 1.0,
                    "Short Tons": 1.12,
                    "Carat": 5080234.544,
                    "Atomic Mass Unit": 6.118773329e+29
                ],
                "Short Tons": [
                    "Grams": 907184.74,
                    "Centigrams": 90718474,
                    "Milligrams": 907184740,
                    "Kilograms": 907.18474,
                    "Pounds": 2000.0,
                    "Ounces": 32000.0,
                    "Metric Tons": 0.90718474,
                    "Long Tons": 0.8928571429,
                    "Short Tons": 1.0,
                    "Carat": 4535923.7,
                    "Atomic Mass Unit": 5.463190472E+29
                ],
                "Carat": [
                    "Grams": 0.2,
                    "Centigrams": 20.0,
                    "Milligrams": 200.0,
                    "Kilograms": 0.0002,
                    "Pounds": 0.000440925,
                    "Ounces": 0.0070547981,
                    "Metric Tons": 2.0e-7,
                    "Long Tons": 1.96841466e-7,
                    "Short Tons": 2.20462442e-7,
                    "Carat": 1.0,
                    "Atomic Mass Unit": 1.20442733E+23
                ],
                "Atomic Mass Unit": [
                    "Grams": 1.660540199E-24,
                    "Centigrams": 1.660540199e-22,
                    "Milligrams": 1.660540199e-21,
                    "Kilograms": 1.660540199e-27,
                    "Pounds": 3.660867475e-27,
                    "Ounces": 5.85738796e-26,
                    "Metric Tons": 1.660540199e-30,
                    "Long Tons": 1.634315837e-30,
                    "Short Tons": 1.830433737e-30,
                    "Carat": 8.302700999e-24,
                    "Atomic Mass Unit": 1.0
                ]
            ]
        ),
        UnitTypeModel(
            unitType: "Temperature",
            units: ["Celsius", "Fahrenheit", "Kelvin"], unitConversionRates: [:]
        ),

        UnitTypeModel(unitType: "Volume", units: ["Liters", "Milliliters", "Cubic Meters", "Cubic Centimeters", "Gallons", "Quarts", "Pints", "Cubic Inches", "Fluid Ounces"], unitConversionRates: [
            "Liters": [
                "Liters": 1.0,
                "Milliliters": 1000.0,
                "Cubic Meters": 0.001,
                "Cubic Centimeters": 1000.0,
                "Gallons": 0.2641720524,
                "Quarts": 1.0566882094,
                "Pints": 2.1133764189,
                "Cubic Inches": 61.023744095,
                "Fluid Ounces": 33.814022702,
            ],
            "Milliliters": [
                "Liters": 0.001,
                "Milliliters": 1.0,
                "Cubic Meters": 0.000001,
                "Cubic Centimeters": 1.0,
                "Gallons": 0.0002641721,
                "Quarts": 0.0010566882,
                "Pints": 0.0021133764,
                "Cubic Inches": 0.0610237441,
                "Fluid Ounces": 0.0338140227,
            ],
            "Cubic Meters": [
                "Liters": 1000.0,
                "Milliliters": 1000000,
                "Cubic Meters": 1.0,
                "Cubic Centimeters": 1000000,
                "Gallons": 264.17205236,
                "Quarts": 1056.6882094,
                "Pints": 2113.3764189,
                "Cubic Inches": 61023.744095,
                "Fluid Ounces": 33814.022702,
            ],
            "Cubic Centimeters": [
                "Liters": 0.001,
                "Milliliters": 1.0,
                "Cubic Meters": 0.000001,
                "Cubic Centimeters": 1.0,
                "Gallons": 0.0002641721,
                "Quarts": 0.0010566882,
                "Pints": 0.0021133764,
                "Cubic Inches": 0.0610237441,
                "Fluid Ounces": 0.0338140227,
            ],
            "Gallons": [
                "Liters": 3.785411784,
                "Milliliters": 3785.411784,
                "Cubic Meters": 0.0037854118,
                "Cubic Centimeters": 3785.411784,
                "Gallons": 1.0,
                "Quarts": 4.0,
                "Pints": 8.0,
                "Cubic Inches": 231.0,
                "Fluid Ounces": 128.0,
            ],
            "Quarts": [
                "Liters": 0.946352946,
                "Milliliters":946.352946,
                "Cubic Meters": 0.0009463529,
                "Cubic Centimeters": 946.352946,
                "Gallons": 0.25,
                "Quarts": 1.0,
                "Pints": 2.0,
                "Cubic Inches": 57.75,
                "Fluid Ounces": 32.0,
            ],
            "Pints": [
                "Liters": 0.473176473,
                "Milliliters": 473.176473,
                "Cubic Meters": 0.0004731765,
                "Cubic Centimeters": 473.176473,
                "Gallons": 0.125,
                "Quarts": 0.5,
                "Pints": 1.0,
                "Cubic Inches": 28.875,
                "Fluid Ounces": 16.0,
            ],
            "Cubic Inches": [
                "Liters": 0.016387064,
                "Milliliters": 16.387064,
                "Cubic Meters": 0.0000163871,
                "Cubic Centimeters": 16.387064,
                "Gallons": 0.0043290043,
                "Quarts": 0.0173160173,
                "Pints": 0.0346320346,
                "Cubic Inches": 1.0,
                "Fluid Ounces": 0.5541125541,
            ],
            "Fluid Ounces": [
                "Liters": 0.0295735296,
                "Milliliters": 29.573529562,
                "Cubic Meters": 0.0000295735,
                "Cubic Centimeters": 29.573529562,
                "Gallons": 0.0078125,
                "Quarts": 0.03125,
                "Pints": 0.0625,
                "Cubic Inches": 1.8046875,
                "Fluid Ounces": 1.0,
            ]
        ]),
        UnitTypeModel(unitType: "Time", units: ["Seconds", "Minutes", "Hours", "Days", "Weeks", "Months", "Years"], unitConversionRates: [
            "Seconds": [
                "Seconds": 1.0,
                "Minutes": 0.0166666667,
                "Hours": 0.0002777778,
                "Days": 0.0000115741,
                "Weeks": 0.0000016534,
                "Months": 3.805175038e-7,
                "Years": 3.168808781e-8,
            ],
            "Minutes": [
                "Seconds": 60.0,
                "Minutes": 1.0,
                "Hours": 0.0166666667,
                "Days": 0.0006944444,
                "Weeks": 0.0000992063,
                "Months": 0.0000228311,
                "Years": 0.0000019013,
            ],
            "Hours": [
                "Seconds": 3600.0,
                "Minutes": 60.0,
                "Hours": 1.0,
                "Days": 0.0416666667,
                "Weeks": 0.005952381,
                "Months": 0.001369863,
                "Years": 0.0001140771,
            ],
            "Days": [
                "Seconds": 86400.0,
                "Minutes": 1440.0,
                "Hours": 24.0,
                "Days": 1.0,
                "Weeks": 0.1428571429,
                "Months": 0.0328767123,
                "Years": 0.0027378508,
            ],
            "Weeks": [
                "Seconds": 604800.0,
                "Minutes": 10080.0,
                "Hours": 168.0,
                "Days": 7.0,
                "Weeks": 1.0,
                "Months": 0.2301369863,
                "Years": 0.0191649555,
            ],
            "Months": [
                "Seconds": 2628000,
                "Minutes": 43800.0,
                "Hours": 730.0,
                "Days": 30.416666667,
                "Weeks": 4.3452380952,
                "Months": 1.0,
                "Years": 0.0832762948,
            ],
            "Years": [
                "Seconds": 31557600,
                "Minutes": 525960,
                "Hours": 8766,
                "Days": 365.25,
                "Weeks": 52.178571429,
                "Months": 12.0,
                "Years": 12.008219178,
            ]
        ]),
        UnitTypeModel(unitType: "Speed", units: ["Meters per Second", "Kilometers per Hour", "Miles per Hour", "Feet per Second"], unitConversionRates: [
            "Meters per Second": [
                "Meters per Second": 1.0,
                "Kilometers per Hour": 3.6,
                "Miles per Hour": 2.2369362921,
                "Feet per Second": 3.280839895
            ],
            "Kilometers per Hour": [
                "Meters per Second": 0.2777777778,
                "Kilometers per Hour": 1.0,
                "Miles per Hour": 0.6213711922,
                "Feet per Second": 0.9113444153
            ],
            "Miles per Hour": [
                "Meters per Second": 0.44704,
                "Kilometers per Hour": 1.609344,
                "Miles per Hour": 1.0,
                "Feet per Second": 1.4666666667
            ],
            "Feet per Second": [
                "Meters per Second": 0.3048,
                "Kilometers per Hour": 1.09728,
                "Miles per Hour": 0.6818181818,
                "Feet per Second": 1.0
            ]
        ]),
        UnitTypeModel(unitType: "Pressure", units: ["Pascals", "Bars", "Atmospheres", "Pounds per Square Inch", "Kilopascals"], unitConversionRates: [
            "Pascals": [
                "Pascals": 1.0,
                "Bars": 0.00001,
                "Atmospheres": 9.86923e-6,
                "Pounds per Square Inch": 0.0001450377,
                "Kilopascals": 0.001
            ],
            "Bars": [
                "Pascals": 100000,
                "Bars": 1.0,
                "Atmospheres": 0.9869232667,
                "Pounds per Square Inch": 14.503773773,
                "Kilopascals": 100.0
            ],
            "Atmospheres": [
                "Pascals": 101325,
                "Bars": 1.01325,
                "Atmospheres": 1.0,
                "Pounds per Square Inch": 14.695948775,
                "Kilopascals": 101.325
            ],
            "Pounds per Square Inch": [
                "Pascals": 6894.7572932,
                "Bars": 0.0689475729,
                "Atmospheres": 0.0680459639,
                "Pounds per Square Inch": 1.0,
                "Kilopascals": 6.8947572932
            ],
            "Kilopascals": [
                "Pascals": 1000.0,
                "Bars": 0.01,
                "Atmospheres": 0.0098692327,
                "Pounds per Square Inch": 0.1450377377,
                "Kilopascals": 1.0
            ]
        ]),
        UnitTypeModel(unitType: "Frequency", units: ["Hertz", "Kilohertz", "Megahertz", "Gigahertz"], unitConversionRates: [
            "Hertz": [
                "Hertz": 1.0,
                "Kilohertz": 0.001,
                "Megahertz": 1.0e-6,
                "Gigahertz": 1.0e-9
            ],
            "Kilohertz": [
                "Hertz": 1000.0,
                "Kilohertz": 1.0,
                "Megahertz": 0.001,
                "Gigahertz": 1.0e-6
            ],
            "Megahertz": [
                "Hertz": 1.0e6,
                "Kilohertz": 1000.0,
                "Megahertz": 1.0,
                "Gigahertz": 0.001
            ],
            "Gigahertz": [
                "Hertz": 1.0e9,
                "Kilohertz": 1.0e6,
                "Megahertz": 1000.0,
                "Gigahertz": 1.0
            ]
        ]),
        UnitTypeModel(unitType: "Energy", units: ["Joules", "Calories (IT)", "Kilojoules", "Watt-Hours", "Kilowatt-Hours"], unitConversionRates: [
            "Joules": [
                "Joules": 1.0,
                "Calories (IT)": 0.2388458966,
                "Kilojoules": 0.001,
                "Watt-Hours": 0.0002777778,
                "Kilowatt-Hours": 2.777777777E-7
            ],
            "Calories (IT)": [
                "Joules": 4.1868,
                "Calories (IT)": 1.0,
                "Kilojoules": 0.0041868,
                "Watt-Hours": 0.001163,
                "Kilowatt-Hours": 0.000001163
            ],
            "Kilojoules": [
                "Joules": 1000.0,
                "Calories (IT)": 238.84589663,
                "Kilojoules": 1.0,
                "Watt-Hours": 0.2777777778,
                "Kilowatt-Hours": 0.0002777778
            ],
            "Watt-Hours": [
                "Joules": 3600.0,
                "Calories (IT)": 859.84522786,
                "Kilojoules": 3.6,
                "Watt-Hours": 1.0,
                "Kilowatt-Hours": 0.001
            ],
            "Kilowatt-Hours": [
                "Joules": 3600000,
                "Calories (IT)": 859845.22786,
                "Kilojoules": 3600.0,
                "Watt-Hours": 1000.0,
                "Kilowatt-Hours": 1.0
            ]
        ]),
        UnitTypeModel(
            unitType: "Digital Storage",
            units: ["Bytes", "Kilobytes", "Megabytes", "Gigabytes"],
            unitConversionRates: [
                "Bytes": [
                    "Bytes": 1.0,
                    "Kilobytes": 0.0009765625,
                    "Megabytes": 9.536743164E-7,
                    "Gigabytes": 9.313225746E-10
                ],
                "Kilobytes": [
                    "Bytes": 1024.0,
                    "Kilobytes": 1.0,
                    "Megabytes": 0.0009765625,
                    "Gigabytes": 9.536743164E-7,
                ],
                "Megabytes": [
                    "Bytes": 1048576,
                    "Kilobytes": 1024.0,
                    "Megabytes": 1.0,
                    "Gigabytes": 0.0009765625
                ],
                "Gigabytes": [
                    "Bytes": 1073741824,
                    "Kilobytes": 1048576,
                    "Megabytes": 1024.0,
                    "Gigabytes": 1.0
                ]
            ]
        ),
        UnitTypeModel(unitType: "Power", units: ["Watts", "Kilowatts", "Megawatts", "Horsepower"], unitConversionRates: [
            "Watts": [
                "Watts": 1.0,
                "Kilowatts": 0.001,
                "Megawatts": 1.0e-6,
                "Horsepower": 0.0013410220896
            ],
            "Kilowatts": [
                "Watts": 1000.0,
                "Kilowatts": 1.0,
                "Megawatts": 1.0e-3,
                "Horsepower": 1.3410220896
            ],
            "Megawatts": [
                "Watts": 1.0e6,
                "Kilowatts": 1000.0,
                "Megawatts": 1.0,
                "Horsepower": 1341.0220896
            ],
            "Horsepower": [
                "Watts": 745.69987158,
                "Kilowatts": 0.7456998716,
                "Megawatts": 0.0007456999,
                "Horsepower": 1.0
            ]
        ]),
        UnitTypeModel(unitType: "Force", units: ["Newtons", "Pounds-force", "Kilograms-force"], unitConversionRates: [
            "Newtons": [
                "Newtons": 1.0,
                "Pounds-force": 0.2248089431,
                "Kilograms-force": 0.1019716213
            ],
            "Pounds-force": [
                "Newtons": 4.4482216153,
                "Pounds-force": 1.0,
                "Kilograms-force": 0.45359237
            ],
            "Kilograms-force": [
                "Newtons": 9.80665,
                "Pounds-force": 2.2046226219,
                "Kilograms-force": 1.0
            ]
        ]),
        UnitTypeModel(unitType: "Area", units: ["Square Meters", "Square Kilometers", "Acres", "Hectares", "Square Feet", "Square Yards"], unitConversionRates: [
            "Square Meters": [
                "Square Meters": 1.0,
                "Square Kilometers": 0.000001,
                "Acres": 0.0002471054,
                "Hectares": 0.0001,
                "Square Feet": 10.763910417,
                "Square Yards": 1.1959900463
            ],
            "Square Kilometers": [
                "Square Meters": 1000000,
                "Square Kilometers": 1.0,
                "Acres": 247.10538147,
                "Hectares": 100.0,
                "Square Feet": 10763910.417,
                "Square Yards": 1195990.0463
            ],
            "Acres": [
                "Square Meters": 4046.8564224,
                "Square Kilometers": 0.0040468564,
                "Acres": 1.0,
                "Hectares": 0.4046856422,
                "Square Feet": 43560,
                "Square Yards": 4840
            ],
            "Hectares": [
                "Square Meters": 10000.0,
                "Square Kilometers": 0.01,
                "Acres": 2.4710538147,
                "Hectares": 1.0,
                "Square Feet": 107639.10417,
                "Square Yards": 11959.900463
            ],
            "Square Feet": [
                "Square Meters": 0.09290304,
                "Square Kilometers": 9.290303999E-8,
                "Acres": 0.0000229568,
                "Hectares": 0.0000092903,
                "Square Feet": 1.0,
                "Square Yards": 0.1111111111
            ],
            "Square Yards": [
                "Square Meters": 0.83612736,
                "Square Kilometers": 8.361273599E-7,
                "Acres": 0.0002066116,
                "Hectares": 0.0000836127,
                "Square Feet": 9.0,
                "Square Yards": 1.0
            ]
        ])
    ]
}
