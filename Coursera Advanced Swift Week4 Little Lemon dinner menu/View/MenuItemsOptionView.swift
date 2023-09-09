//
//  MenuItemsOptionView.swift
//  Coursera Advanced Swift Week4 Little Lemon dinner menu
//
//  Created by Ihor Dolhalov on 08.09.2023.
//

import SwiftUI


// Define an enum for selected categories
enum SelectedCategory: String, CaseIterable, Identifiable {
    case food = "Food"
    case drink = "Drink"
    case dessert = "Dessert"
    
    var id: String { self.rawValue }
}

// Define an enum for sorting options
enum SortOption: String, CaseIterable, Identifiable {
    case mostPopular = "Most Popular"
    case price = "Price $-$$$"
    case alphabetical = "A-Z"
    
    var id: String { self.rawValue }
}


struct MenuItemsOptionView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        
        List {
            Section(header: Text("SELECTED CATEGORIES")) {
                ForEach(SelectedCategory.allCases, id: \.self) { category in
                    Text(category.rawValue)
                }
            }
            
            Section(header: Text("SORT BY")) {
                ForEach(SortOption.allCases, id: \.self) { option in
                    Text(option.rawValue)
                }
            }
        }
        .listStyle(GroupedListStyle()) // Apply a grouped list style
        .navigationBarTitle("Filter") // Set the navigation bar title
        .navigationBarBackButtonHidden(true)
        .toolbar { ToolbarItem(placement: .navigationBarTrailing) {
            Button (action: { dismiss() }, label: { Text ( "Done") }
            )
            
        }
        }
    }
}


struct MenuItemsOptionView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsOptionView()
    }
}

