//
//  MenuDetailsView.swift
//  LittleLemonDinnerMenu
//
//  Created by Montserrat Gomez on 2023-08-24.
//

import SwiftUI

struct MenuItemDetailsView: View {
    var body: some View {
		VStack{
			Image("LittleLemonlogo")
				.resizable()
				.aspectRatio(contentMode: .fit)
				.frame(width: 200, height: 200, alignment: .center)
		}
    }
}

struct MenuItemDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemDetailsView()
    }
}
