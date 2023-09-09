//
//  Coursera_Advanced_Swift_Week4_Little_Lemon_dinner_menuTests.swift
//  Coursera Advanced Swift Week4 Little Lemon dinner menuTests
//
//  Created by Ihor Dolhalov on 08.09.2023.
//

import XCTest
@testable import Coursera_Advanced_Swift_Week4_Little_Lemon_dinner_menu

final class Coursera_Advanced_Swift_Week4_Little_Lemon_dinner_menuTests: XCTestCase {

    
    func testMenuItemTitle() {
        XCTAssertEqual(food1.name, "Food1")
        XCTAssertEqual(drink1.name, "Drink1")
        XCTAssertEqual(dessert1.name, "Dessert1")

    }
    
    func testMenuItemIngredients() {
        XCTAssertEqual(food1.ingredients, [.broccoli, .carrot])
        XCTAssertEqual(drink1.ingredients, [.broccoli, .carrot, .spinach])
        XCTAssertEqual(dessert1.ingredients, [.broccoli, .carrot, .spinach, .pasta, .tomato])
        
    }
    

}
