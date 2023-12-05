//
//  UnitConverterApp.swift
//  UnitConverter
//
//  Created by Talal El Zeini on 7/30/23.
//

import SwiftUI

@main
struct UnitConverterApp: App {
    
    // Create an instance of the Data model
    private let data = Data();
    
    init() {
        // Configure the appearance of the navigation bar
        let navigationBarAppearance = UINavigationBarAppearance()
        navigationBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        UINavigationBar.appearance().standardAppearance = navigationBarAppearance
        
        // Configure the background color of the tab bar
        UITabBar.appearance().backgroundColor = UIColor.white
    }
    
    @State private var isScrollDisabled = false
         
    var body: some Scene {
        WindowGroup{
            // TabView to organize different unit converter views
            TabView{
                ForEach(data.unitCategories, id: \.self) { category in
                    // Display a UnitConverterView for each category
                    UnitConverterView(
                        viewTitle: category.viewTitle,
                        viewImageName: category.viewImageName,
                        conversionRates: category.conversionRates,
                        unitNames: category.unitNames
                    )
                }
            }.accentColor(.cyan)
        }
    }
}
