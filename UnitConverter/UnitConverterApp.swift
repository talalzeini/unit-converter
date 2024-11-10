//
//  UnitConverterApp.swift
//  UnitConverter
//
//  Created by Talal El Zeini on 7/30/23.
//

import SwiftUI

@main
struct UnitConverterApp: App {
    
    private let data = UnitConversionDataModel();
    
    init() {
        // Configure the appearance of the navigation bar
        let navigationBarAppearance = UINavigationBarAppearance()
        navigationBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        UINavigationBar.appearance().standardAppearance = navigationBarAppearance
    }
    
    var body: some Scene {
        WindowGroup{
            UnitConverterView(
                viewModel: UnitConverterViewModel(data: data)
            )
        }
    }
}
