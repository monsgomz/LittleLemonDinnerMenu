//
//  MenuItemsView.swift
//  LittleLemonDinnerMenu
//
//  Created by Montserrat Gomez on 2023-08-24.
//

import SwiftUI

struct MenuItemsView: View {
	
	var columns: [GridItem] = [
		GridItem(.fixed(120)),
		GridItem(.fixed(120)),
		GridItem(.fixed(120))
	]
    var body: some View {
		NavigationView{
			ScrollView{
				VStack{
					SectionItemView(title: "Food", columns: columns, foodSelection: MenuViewViewModel().foodMock)
					SectionItemView(title: "Drinks", columns: columns, foodSelection: MenuViewViewModel().drinkMock)
					SectionItemView(title: "Desserts", columns: columns, foodSelection: MenuViewViewModel().dessertMock)
				}
			}
			.frame(width: 614.04, height: 629.748)
			.navigationTitle("Menu")
			.toolbar{
				NavigationLink(destination: MenuItemsOptionView()){
					Image(systemName: "slider.horizontal.3")
				}
			}

		}
		
	}
}



struct MenuItemsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsView()
    }
}
