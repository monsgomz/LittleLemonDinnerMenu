//
//  MenuDetailsView.swift
//  LittleLemonDinnerMenu
//
//  Created by Montserrat Gomez on 2023-08-24.
//

import SwiftUI

struct MenuItemDetailsView: View {
	var item: MenuItem
	
    var body: some View {
		VStack{
			Text(item.title)
				.font(.title)
				.bold()
				.frame(width: 300, height: 40,alignment: .leading)
			Image("LittleLemonlogo")
				.resizable()
				.aspectRatio(contentMode: .fit)
				.frame(width: 200, height: 200, alignment: .center)
			Text("Precio:")
				.bold()
			Text("$\(item.price.rounded(.up))")
			Text("Ordered: ")
				.bold()
			Text("\(item.orders)")
			Text("Ingredients:")
				.bold()
			ForEach(item.ingredients, id: \.self) { ingredient in
				Text("\(ingredient.rawValue)")
			}
			Spacer()
			
		}
	}
}

struct MenuItemDetailsView_Previews: PreviewProvider {
    static var previews: some View {
		MenuItemDetailsView(item: MenuItem(menu: .Food, orders: 2, id: UUID(), title: "Food 1", ingredients: [.Pasta, .Spinach]))
    }
}
