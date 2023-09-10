//
//  FoodInfoScreen.swift
//  FoodExpiryTracker
//
//  Created by Ekaterina Kukartseva on 09.09.2023.
//

import SwiftUI

struct FoodInfoScreen: View {
    
    @State var isAnimating: Bool
    
    var body: some View {
        ActivityIndicator(isAnimating: $isAnimating)
    }
}

struct FoodInfoScreen_Previews: PreviewProvider {
    
    static var previews: some View {
        FoodInfoScreen(isAnimating: true)
    }
}
