//
//  CalendarScreen.swift
//  FoodExpiryTracker
//
//  Created by Ekaterina Kukartseva on 04.09.2023.
//

import SwiftUI

struct CalendarScreen: View {
    
    @State var isSheetShowed: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack{
                Spacer()
                HStack {
                    Spacer()
                    Button(action: {
                        isSheetShowed.toggle()
                    }) {
                        Image(systemName: "plus")
                            .frame(width: 50, height: 50)
                            .foregroundColor(Color.white)
                            .background(Color.green)
                            .clipShape(Circle())
                    }
                    .sheet(isPresented: $isSheetShowed, content: {
                        Text("📆").font(.system(size: 200))
                    })
                    .padding(.trailing)
                }
            }
            .navigationTitle("Календарь")
        }
    }
}

struct CalendarScreen_Previews: PreviewProvider {
    
    static var previews: some View {
        CalendarScreen()
    }
}
