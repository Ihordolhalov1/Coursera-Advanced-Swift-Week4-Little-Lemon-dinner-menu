//
//  Ingredient.swift
//  Coursera Advanced Swift Week4 Little Lemon dinner menu
//
//  Created by Ihor Dolhalov on 08.09.2023.
//

import Foundation
enum ingredient: String, Identifiable {
    case spinach = "Spinach"
    case broccoli = "Broccoli"
    case carrot = "Carrot"
    case pasta = "Pasta"
    case tomato = "Tomato sauce"
    
    var id: String { self.rawValue }
}
