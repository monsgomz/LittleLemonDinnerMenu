//
//  MenuViewModel.swift
//  LittleLemonDinnerMenu
//
//  Created by Montserrat Gomez on 2023-08-29.
//

import Foundation

class MenuViewViewModel: ObservableObject {
	@Published var foodMock: [MenuItem] = []
	@Published var drinkMock: [MenuItem] = []
	@Published var dessertMock: [MenuItem] = []

	
	init() {

		foodMock = [
			MenuItem(menu: .Food, orders: 2, id: UUID(), title: "Food 1", ingredients: [.Pasta, .Spinach]),
			MenuItem(menu: .Food, orders: 20, id: UUID(), title: "Food 2", ingredients: [.Pasta, .Spinach]),
			MenuItem(menu: .Food, orders: 7, id: UUID(), title: "Food 3", ingredients: [.Pasta, .Carrot]),
			MenuItem(menu: .Food, orders: 2, id: UUID(), title: "Food 4", ingredients: [.TomatoSauce, .Broccoli]),
			MenuItem(menu: .Food, orders: 10, id: UUID(), title: "Food 5", ingredients: [.Spinach]),
			MenuItem(menu: .Food, orders: 9, id: UUID(), title: "Food 6", ingredients: [.Broccoli, .Spinach]),
			MenuItem(menu: .Food, orders: 55, id: UUID(), title: "Food 7", ingredients: [.Pasta, .Spinach, .TomatoSauce]),
			MenuItem(menu: .Food, orders: 23, id: UUID(), title: "Food 8", ingredients: [.Pasta, .Spinach]),
			MenuItem(menu: .Food, orders: 15, id: UUID(), title: "Food 9", ingredients: [.TomatoSauce, .Carrot]),
			MenuItem(menu: .Food, orders: 8, id: UUID(), title: "Food 10", ingredients: [.Carrot, .Spinach, .TomatoSauce]),
			MenuItem(menu: .Food, orders: 7, id: UUID(), title: "Food 11", ingredients: [.Pasta, .Carrot]),
			MenuItem(menu: .Food, orders: 33, id: UUID(), title: "Food 12", ingredients: [.TomatoSauce, .Broccoli])
			]
		
		drinkMock = [
			MenuItem(menu: .Drink, orders: 33, id: UUID(), title: "Drink 1", ingredients: [.Spinach]),
			MenuItem(menu: .Drink, orders: 3, id: UUID(), title: "Drink 2", ingredients: [.Carrot]),
			MenuItem(menu: .Drink, orders: 2, id: UUID(), title: "Drink 3", ingredients: [.Spinach]),
			MenuItem(menu: .Drink, orders: 10, id: UUID(), title: "Drink 4", ingredients: [.TomatoSauce]),
			MenuItem(menu: .Drink, orders: 52, id: UUID(), title: "Drink 5", ingredients: [.Spinach]),
			MenuItem(menu: .Drink, orders: 22, id: UUID(), title: "Drink 6", ingredients: [.Carrot]),
			MenuItem(menu: .Drink, orders: 11, id: UUID(), title: "Drink 7", ingredients: [.Carrot]),
			MenuItem(menu: .Drink, orders: 9, id: UUID(), title: "Drink 8", ingredients: [.Spinach])
		]
		
		dessertMock = [
			MenuItem(menu: .Dessert, orders: 3, id: UUID(), title: "Dessert 1", ingredients: [.Spinach, .Carrot]),
			MenuItem(menu: .Dessert, orders: 3, id: UUID(), title: "Dessert 2", ingredients: [.Carrot]),
			MenuItem(menu: .Dessert, orders: 3, id: UUID(), title: "Dessert 3", ingredients: [.Broccoli, .Carrot]),
			MenuItem(menu: .Dessert, orders: 3, id: UUID(), title: "Dessert 4", ingredients: [.Spinach])
		]

	}
}



