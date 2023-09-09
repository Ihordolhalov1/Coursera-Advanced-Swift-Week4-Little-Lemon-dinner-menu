//
//  Model.swift
//  Coursera Advanced Swift Week4 Little Lemon dinner menu
//
//  Created by Ihor Dolhalov on 08.09.2023.
//

import Foundation
struct MenuItem: Identifiable {
    var name: String
    var ingredients: [ingredient]
    var id: String
}


let food1 = MenuItem(name: "Food1", ingredients: [.broccoli, .carrot], id: "1")
let food2 = MenuItem(name: "Food2", ingredients: [.broccoli, .carrot], id: "2")
let food3 = MenuItem(name: "Food1", ingredients: [.broccoli, .carrot], id: "3")
let food4 = MenuItem(name: "Food1", ingredients: [.broccoli, .carrot], id: "4")
let food5 = MenuItem(name: "Food1", ingredients: [.broccoli, .carrot], id: "5")
let food6 = MenuItem(name: "Food1", ingredients: [.broccoli, .carrot], id: "6")
let food7 = MenuItem(name: "Food1", ingredients: [.broccoli, .carrot], id: "7")
let food8 = MenuItem(name: "Food1", ingredients: [.broccoli, .carrot], id: "8")
let food9 = MenuItem(name: "Food1", ingredients: [.broccoli, .carrot], id: "9")
let food10 = MenuItem(name: "Food1", ingredients: [.broccoli, .carrot], id: "10")
let food11 = MenuItem(name: "Food1", ingredients: [.broccoli, .carrot], id: "11")
let food12 = MenuItem(name: "Food1", ingredients: [.broccoli, .carrot], id: "12")


let drink1 = MenuItem(name: "Drink1", ingredients: [.broccoli, .carrot, .spinach], id: "1")
let drink2 = MenuItem(name: "Drink2", ingredients: [.broccoli, .carrot, .spinach], id: "2")
let drink3 = MenuItem(name: "Drink3", ingredients: [.broccoli, .carrot, .spinach], id: "3")
let drink4 = MenuItem(name: "Drink4", ingredients: [.broccoli, .carrot, .spinach], id: "4")
let drink5 = MenuItem(name: "Drink5", ingredients: [.broccoli, .carrot, .spinach], id: "5")
let drink6 = MenuItem(name: "Drink6", ingredients: [.broccoli, .carrot, .spinach], id: "6")
let drink7 = MenuItem(name: "Drink7", ingredients: [.broccoli, .carrot, .spinach], id: "7")
let drink8 = MenuItem(name: "Drink8", ingredients: [.broccoli, .carrot, .spinach], id: "8")

let dessert1 = MenuItem(name: "Dessert1", ingredients: [.broccoli, .carrot, .spinach, .pasta, .tomato], id: "1")
let dessert2 = MenuItem(name: "Dessert2", ingredients: [.broccoli, .carrot, .spinach, .pasta, .tomato], id: "2")
let dessert3 = MenuItem(name: "Dessert3", ingredients: [.broccoli, .carrot, .spinach, .pasta, .tomato], id: "3")
let dessert4 = MenuItem(name: "Dessert4", ingredients: [.broccoli, .carrot, .spinach, .pasta, .tomato], id: "4")



class MenuViewViewModel: ObservableObject {
        @Published var foodMenuItems: [MenuItem]
       @Published var drinkMenuItems: [MenuItem]
       @Published var dessertMenuItems: [MenuItem]
       
       init() {
           foodMenuItems = [food1, food2, food3, food4, food5, food6, food7, food8, food9, food10, food11, food12]
           drinkMenuItems = [drink1, drink2, drink3, drink4, drink5, drink6, drink7, drink8]
           dessertMenuItems = [dessert1, dessert2, dessert3, dessert4]
       }
 

}

protocol MenuItemProtocol {
    var id: UUID { get }
    var price: Double { get }
    var title: String { get }
    var category: MenuCategory { get }
    var ordersCount: Int { get set }
    var price2: Int { get set }
    var ingredients: [ingredient] { get set }
}

extension MenuViewViewModel: MenuItemProtocol {
    var id: UUID {
        UUID()
    }
    
   var price: Double {
        10.0
    }
    
    
    
    var title: String {
        ""
    }
    
    var category: MenuCategory {
        .food
    }
    
    var ordersCount: Int {
        get {
            0
        }
        set {
            0
        }
    }
    
    var price2: Int {
        get {
            0
        }
        set {
            0
        }
    }
    
    var ingredients: [ingredient] {
        get {
            []
        }
        set {
            [ingredient.broccoli]
        }
    }
    

    
}

