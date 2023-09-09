//
//  MenuItemsOptionView.swift
//  LittleLemonDinnerMenu
//
//  Created by Montserrat Gomez on 2023-08-24.
// Es la vista del menu de configuracion
//

import SwiftUI

struct MenuItemsOptionView: View {
    
    var body: some View {
		VStack {
			List {
				Section(header: Text("Selected categories".uppercased())){
					ForEach(MenuCategory.allCases, id: \.self) { items in
						Text(items.rawValue)
					}
				}
				Section("Sort by"){
					ForEach(SortBy.allCases, id: \.self) { option in
						Text(option.rawValue)
					}
				}
			}
		}.navigationTitle("Filter")
    }
}

struct MenuItemsOptionView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsOptionView()
    }
}
