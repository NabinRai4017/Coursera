//
//  MenuItemCellView.swift
//  LittleLemonDinnerMenu
//
//  Created by NAbin RAi on 05/04/2023.
//

import SwiftUI

struct MenuItemCellView: View {
    let menuItem: MenuItem
    var body: some View {
        VStack(alignment: .center, spacing: 8){
            Color.black
            Text(menuItem.title)
                .foregroundColor(.black)
        }
        .frame(height: 100)
    }
}

struct MenuItemCellView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemCellView(menuItem: MenuViewViewModel().foods[0])
    }
}
