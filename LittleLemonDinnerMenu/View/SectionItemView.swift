//
//  SectionItemView.swift
//  LittleLemonDinnerMenu
//
//  Created by Montserrat Gomez on 2023-09-05.
//

import SwiftUI

struct SectionItemView: View {

	var title: String
	var columns: [GridItem]
	var foodSelection: [MenuItem]
	
    var body: some View {
		Text(title)
			.font(.title2)
			.frame(width: 360, alignment: .leading)
			.padding(10)
		
		LazyVGrid(columns: columns) {
			ForEach(foodSelection){ element in
				VStack(){
//					NavigationLink(destination:MenuItemsOptionView(), element.title)){
//						Rectangle().size(width: 120, height: 100)
//						Text(element.title)
//					}
//
				}.frame(width:130, height:120)
					.padding(4)
					
			}
		}
		.frame(width: .infinity, height:.infinity)
    }
}

struct SectionItemView_Previews: PreviewProvider {
    static var previews: some View {
		SectionItemView(title: "Food", columns: [
			GridItem(.fixed(120)),
			GridItem(.fixed(120)),
			GridItem(.fixed(120))
		], foodSelection: MenuViewViewModel().foodMock)
    }
}
