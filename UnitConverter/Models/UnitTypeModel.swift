//
//  UnitInfo.swift
//  UnitConverter
//
//  Created by Talal El Zeini on 8/31/24.
//

import Foundation

struct UnitTypeModel {
    let unitType: String
    let units: [String]
    let unitConversionRates: [String: [String: Double]]
}
