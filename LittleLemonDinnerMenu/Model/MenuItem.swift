//
//  MenuItem.swift
//  LittleLemonDinnerMenu
//
//  Created by Montserrat Gomez on 2023-08-29.
//

import Foundation

protocol MenuItemProtocol {
	var id: UUID {get}
	var price: Double {get}
	var title: String {get}
	var menu: MenuCategory {get}
	var orders: Int {get set}
	var ingredients: [Ingredient] {get set}
	
}

struct MenuItem: Identifiable, MenuItemProtocol {
	var menu: MenuCategory
	var orders: Int = 0
	var id = UUID()
	var title: String
	var ingredients: [Ingredient]
	var price: Double {
		// Calculate price based on ingredients or other logic if needed
		return 0.0 // Replace with actual price calculation
	}

}
