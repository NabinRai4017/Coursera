//
//  MenuItemsDetailView.swift
//  LittleLemonDinnerMenu
//
//  Created by NAbin RAi on 05/04/2023.
//

import SwiftUI

struct MenuItemsDetailView: View {
    
    let menuItem: MenuItem
    
    var ingredients: String {
        return menuItem.ingredient.reduce("") {
            if $0 == ""{
                return $0 + $1.rawValue
            }else{
                return $0 + "\n" + $1.rawValue
            }
        }
    }
    
    var body: some View {
            ScrollView{
                VStack(spacing: 0){
                    Image("Little-Lemon-Logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 250)
                    Text("Price")
                    Text("$\(menuItem.Price)")
                    Text("Ordered")
                    Text("\(menuItem.orders)")
                    Text("Ingredients")
                    Text(ingredients)
                }
            }
            .navigationTitle(menuItem.title)
    }
}

struct MenuItemsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsDetailView(menuItem: MenuViewViewModel().foods[1])
    }
}
