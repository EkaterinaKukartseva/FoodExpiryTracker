//
//  SettingsScreen.swift
//  FoodExpiryTracker
//
//  Created by Ekaterina Kukartseva on 04.09.2023.
//

import SwiftUI

struct SettingsScreen: View {
    
    @Environment(\.currentTab) var tab
    
    var body: some View {
        NavigationStack {
            Button("Нажми на меня") {
                tab.wrappedValue = .refrigerator
            }
            .buttonStyle(.bordered)
            .navigationTitle("Настройки")
        }
    }
}

struct SettingsScreen_Previews: PreviewProvider {
    
    static var previews: some View {
        SettingsScreen()
    }
}
