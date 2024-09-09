//
//  UnitConverterView.swift
//  UnitConverter
//
//  Created by Talal El Zeini on 9/3/23.
//

import SwiftUI

struct StyledComponent: ViewModifier {
    func body(content: Content) -> some View {
        let screenHeight = UIScreen.main.bounds.height
        var componentPadding: CGFloat {
            switch screenHeight {
            case ...667: // iPhone SE and similar sizes
                return 10
            default: // iPhone 15 and larger sizes
                return 15
            }
        }
        
        content
            .padding(componentPadding)
            .foregroundStyle(.white)
            .background(Color.white.opacity(0.2))
            .cornerRadius(15)
            .frame(maxWidth: .infinity)
    }
}

extension View {
    func styledComponent() -> some View {
        self.modifier(StyledComponent())
    }
}

struct UnitConverterView: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    @FocusState private var keypadIsFocused: Bool
    
    @StateObject public var viewModel: UnitConverterViewModel
    
    var tintColor: Color = .white
    var sectionHeaderColor: Color = .white
    
    let charactersLimit = 10
    
    var body: some View {
        
        let backgroundColor: Color = colorScheme == .dark
        ? Color(red: 0, green: 0, blue: 0.25)
        : Color.blue.opacity(0.5)
        
        let closeButtonColor: Color = colorScheme == .dark
        ? .white
        : Color.blue.opacity(0.5)
        
        ZStack{
            
            backgroundColor.ignoresSafeArea()
            
            NavigationView {
                Form {
                    
                    Section(header: Text("Convert a unit").foregroundStyle(sectionHeaderColor).bold()) {
                        
                        VStack {
                            
                            // Text field for entering the value to be converted
                            TextField("Enter a value: ", text: $viewModel.amountToConvert)
                                .keyboardType(.decimalPad).focused($keypadIsFocused)
                                .styledComponent()
                                .onChange(of: viewModel.amountToConvert) { _, newValue in
                                    if newValue.count > charactersLimit {
                                        viewModel.amountToConvert = String(newValue.prefix(charactersLimit))
                                    }
                                }
                                .toolbar {
                                    // Toolbar for the keyboard with a clear button
                                    ToolbarItemGroup(placement: .keyboard) {
                                        Spacer()
                                        Button(action: {
                                            keypadIsFocused = false
                                        }) {
                                            Image(systemName: "xmark.circle.fill")
                                                .foregroundColor(closeButtonColor)
                                        }
                                    }
                                }
                            
                            Picker("Unit Type", selection: $viewModel.categoryIndex) {
                                ForEach(viewModel.combinedUnitTypes().indices, id: \.self) { index in
                                    Text(viewModel.combinedUnitTypes()[index]).tag(index)
                                }
                            }
                            .tint(tintColor)
                            .styledComponent()
                            
                            
                            Picker(selection: $viewModel.sourceUnitIndex, label: Text("From")) {
                                ForEach(viewModel.units.indices, id: \.self) { index in
                                    Text(viewModel.units[index]).tag(index)
                                }
                            }
                            .tint(tintColor)
                            .styledComponent()
                            
                            Picker(selection: $viewModel.targetUnitIndex, label: Text("To")) {
                                ForEach(viewModel.units.indices, id: \.self) { index in
                                    Text(viewModel.units[index]).tag(index)
                                }
                            }
                            .tint(tintColor)
                            .styledComponent()
                        }
                    }
                    .listRowBackground(Color.clear)
                    
                    let conversionResult = viewModel.convert()
                    
                    if conversionResult.isSuccess {
                        Section(header: Text("Conversion").foregroundStyle(sectionHeaderColor).bold()) {
                            let unitTypeName = viewModel.units[viewModel.targetUnitIndex]
                            
                            TextField("", text: .constant("\(conversionResult.value) \(unitTypeName)"))
                                .accessibility(identifier: "conversionText")
                                .styledComponent()
                                .disabled(true)
                        }
                        .listRowBackground(Color.clear)
                    }
                    
                    if conversionResult.isSuccess {
                        Section(header: Text("More").foregroundStyle(sectionHeaderColor).bold()) {
                            let unitIndices = viewModel.getRandomUnitIndices()
                            let numberOfOptions = 2
                            
                            VStack {
                                ForEach(0..<numberOfOptions, id: \.self) { index in
                                    let conversionResult = viewModel.convert(unitIndex: unitIndices[index])
                                    let unitTypeName = viewModel.units[unitIndices[index]]
                                    
                                    TextField("", text:.constant("\(conversionResult.value) \(unitTypeName)"))
                                        .styledComponent()
                                        .disabled(true)
                                }
                            }
                        }
                        .listRowBackground(Color.clear)
                    }
                }
                .scrollContentBackground(.hidden)
                .background(backgroundColor)
                .navigationBarTitle("Unit Converter", displayMode: .inline)
                .scrollDisabled(true)
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .frame(maxWidth: 600)
        }
    }
}
