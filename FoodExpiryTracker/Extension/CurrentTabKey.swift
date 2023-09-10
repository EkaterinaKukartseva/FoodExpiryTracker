//
//  CurrentTabKey.swift
//  FoodExpiryTracker
//
//  Created by Ekaterina Kukartseva on 10.09.2023.
//

import SwiftUI

enum NavigationItem: Hashable {
    
    case calendar
    case settings
    case refrigerator
}

struct CurrentTabKey: EnvironmentKey {
    
    static var defaultValue: Binding<NavigationItem> = .constant(.settings)
}

extension EnvironmentValues {
    
    var currentTab: Binding<NavigationItem> {
        get { self[CurrentTabKey.self] }
        set { self[CurrentTabKey.self] = newValue }
    }
}
