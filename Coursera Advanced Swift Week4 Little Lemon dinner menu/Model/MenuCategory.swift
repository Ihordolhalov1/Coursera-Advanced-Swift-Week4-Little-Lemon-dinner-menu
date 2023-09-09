//
//  MenuCategory.swift
//  Coursera Advanced Swift Week4 Little Lemon dinner menu
//
//  Created by Ihor Dolhalov on 08.09.2023.
//

import Foundation

enum MenuCategory: String, Identifiable {
    case food = "Food"
    case drink = "Drink"
    case dessert = "Dessert"
    
    var id: String { self.rawValue }
}
