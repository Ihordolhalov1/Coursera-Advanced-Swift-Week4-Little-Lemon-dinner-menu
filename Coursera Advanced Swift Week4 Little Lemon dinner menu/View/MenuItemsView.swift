//
//  MenuItemsView.swift
//  Coursera Advanced Swift Week4 Little Lemon dinner menu
//
//  Created by Ihor Dolhalov on 08.09.2023.
//

import SwiftUI

struct MenuItemsView: View {
    let foodItems = (1...12).map { "Food \($0)" }
    let drinkItems = (1...8).map { "Drink \($0)" }
    let dessertItems = (1...4).map { "Dessert \($0)" }
    
  
    
    var body: some View {
        
        HStack {
            
            NavigationView {
                ScrollView {
                    VStack  (alignment: .leading) {
                        SubMenuLabel(label: "Food")
                        GroupMenuItemView(items: foodItems)
                        
                        SubMenuLabel(label: "Drinks")
                        GroupMenuItemView(items: drinkItems)
                        
                        SubMenuLabel(label: "Desserts")
                        GroupMenuItemView(items: dessertItems)
                    }
                }
                .navigationTitle("Menu")
                .toolbar {
                    NavigationLink( destination: MenuItemsOptionView(),
                                    label: {
                        Image(systemName: "slider.horizontal.3")
                    })
                }
                
                
            }
            
            
        }
        
    }
    
}


struct SubMenuLabel: View {
    var label: String
    var body: some View {
        Text(label)
            .font(.largeTitle)
            .fontWeight(.medium)
            .padding(.leading, 20)
    }
}

struct MenuItemView: View {
    var label: String
    
    var body: some View {
        VStack (alignment: .leading, spacing: 20) {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.black)
                .frame(height: 100)
            
            NavigationLink(destination: MenuItemDetailsView(label: label)) {
                Text(label)
                    .font(.headline)
                    .foregroundColor(.black)
            }
                
        }
    }
}

struct GroupMenuItemView: View {
    let items: [String]
    var body: some View {
        LazyVGrid(columns: Array(repeating: .init(.flexible()), count: 3), spacing: 10) {
            ForEach(items, id: \.self) { food in
                MenuItemView(label: food)
            }} .padding(.horizontal)
    }
}






struct MenuItemsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsView()
    }
}
