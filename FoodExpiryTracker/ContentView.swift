//
//  ContentView.swift
//  FoodExpiryTracker
//
//  Created by Ekaterina Kukartseva on 04.09.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedTab: NavigationItem = .settings
    
    var body: some View {
        TabView(selection: $selectedTab) {
            SettingsScreen()
                .tag(NavigationItem.settings)
                .tabItem {
                    Label("Настройки", systemImage: "gearshape")
                }
                .environment(\.currentTab, $selectedTab)
            FoodListScreen()
                .tag(NavigationItem.refrigerator)
                .tabItem {
                    Label("Продукты", systemImage: "refrigerator")
                }
            CalendarScreen()
                .tag(NavigationItem.calendar)
                .tabItem {
                    Label("Календарь", systemImage: "calendar")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
    }
}
