//
//  UnitConverterView.swift
//  UnitConverter
//
//  Created by Talal El Zeini on 9/3/23.
//

import SwiftUI

struct UnitConverterView: View {
    
    // Manage whether the keypad is focused
    @FocusState private var keypadIsFocused: Bool
    
    // Disable scrolling
    @State private var isScrollDisabled = true
    
    @State public var sourceUnitIndex = 0
    @State public var targetUnitIndex = 1
    
    // Default value is "1" for initial display
    @State public var amountToConvert : String = "1"
    
    let viewTitle: String
    let viewImageName: String
    let conversionRates : [String: [String : Double]]
    let unitNames : [String]

    // Function that performs unit conversion, and return the result as a formatted string
    func convert(_ input: String, sourceUnitIndex: Int, targetUnitIndex: Int) -> String {
        
        var conversionValue : Double = 1.0
        
        // Extracting the numeric value from the input string
        guard let amount = Double(input) else {
            return "0"
        }
            
        // Getting the source and target units from the array of unit names
        let sourceUnit = unitNames[sourceUnitIndex]
        let targetUnit = unitNames[targetUnitIndex]
        
        // Checking if the conversion involves temperature or not
        if(viewTitle != "Temperature"){
            conversionValue = amount * (conversionRates[sourceUnit]?[targetUnit] ?? 0.0)
        }else{
            conversionValue = TemperatureConverter.convertTemperature(amount: amount, sourceUnit: sourceUnit, targetUnit: targetUnit)
        }

        return conversionValue.removeZerosFromEnd()
    }

    var body: some View {
        NavigationView{
                Form{
                    Section(header: Text("Convert a " + viewTitle + " unit").foregroundColor(Color.white).bold()){
                        
                        // Text field for entering the value to be converted
                        TextField("Enter a value: ", text: $amountToConvert)
                            .keyboardType(.decimalPad).focused($keypadIsFocused)
                            .toolbar {
                                // Toolbar for the keyboard with a clear button
                                ToolbarItemGroup(placement: .keyboard) {
                                    Spacer()
                                    Button(action: {
                                        keypadIsFocused = false
                                   }) {
                                       Image(systemName: "xmark.circle.fill")
                                           .foregroundColor(.cyan)
                                   }
                                    }
                              }

                        // Picker for selecting the source unit
                        Picker(selection: $sourceUnitIndex, label: Text("From")){
                            ForEach(unitNames.indices, id: \.self) { index in
                                Text(self.unitNames[index]).tag(index)
                            }
                        }

                        // Picker for selecting the target unit
                        Picker(selection: $targetUnitIndex, label: Text("To")){
                            ForEach(unitNames.indices, id: \.self) { index in
                                Text(self.unitNames[index]).tag(index)
                            }
                        }

                    }
                    Section(header: Text("Conversion").foregroundColor(Color.white).bold()){
                        Text("\(convert(amountToConvert, sourceUnitIndex: sourceUnitIndex, targetUnitIndex: targetUnitIndex)) \(unitNames[targetUnitIndex])").accessibility(identifier: "conversionText")
                    }
                }
                .scrollContentBackground(.hidden)
                .background(Color.cyan)
                .navigationBarTitle(viewTitle, displayMode: .inline)

        }.tabItem{
            Label(viewTitle, systemImage: viewImageName)
        }
        .toolbar(.visible, for: .tabBar)
        .scrollDisabled(isScrollDisabled)
        }
    }
