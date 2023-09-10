//
//  DashboardScreen.swift
//  FoodExpiryTracker
//
//  Created by Ekaterina Kukartseva on 04.09.2023.
//

import SwiftUI

struct Food: Identifiable {
    
    let id: UUID = .init()
    let name: String
    let create: Date
    let expiry: Date
}

final class FoodListViewModel: ObservableObject {
    
    @Published private(set) var foods: [Food] = [
        Food(name: "Молоко", create: Date(), expiry: Date()),
        Food(name: "Яйца", create: Date(), expiry: Date())
    ]
}

struct FoodListScreen: View {
    
    static let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yy"
        return formatter
    }()
    
    @StateObject var foodList: FoodListViewModel = .init()
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationStack {
            VStack {
                List(foodList.foods) { food in
                    NavigationLink(destination: FoodInfoScreen(isAnimating: true)) {
                        VStack(alignment: .leading) {
                            Text(food.name)
                            Text(food.expiry, formatter: Self.dateFormatter)
                                .font(.system(size: 10))
                        }
                        .frame(height: 50)
                    }
                    .listRowSeparator(.hidden)
                }
            }
            .navigationTitle("Продукты")
        }
    }
}

struct FoodListScreen_Previews: PreviewProvider {
    
    static var previews: some View {
        FoodListScreen()
    }
}
