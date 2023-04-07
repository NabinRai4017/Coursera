//
//  MenuItemsByCategoryView.swift
//  LittleLemonDinnerMenu
//
//  Created by NAbin RAi on 06/04/2023.
//

import SwiftUI

struct MenuItemsByCategoryView: View {
    
    let category: MenuCategory
    
    let columns = [
        GridItem(.adaptive(minimum: 70))
    ]
    
    var items: [MenuItem] {
        return menuItems.filter{
            $0.category == category
        }
    }
    
    var body: some View {
        ScrollView{
            LazyVGrid(columns: columns, alignment: .leading, spacing: 16) {
                ForEach(items) { item in
                    NavigationLink {
                        MenuItemsDetailView(menuItem: item)
                    } label: {
                        MenuItemCellView(menuItem: item)
                    }
                }
            }
            .padding(.horizontal)
        }
        .navigationTitle(category.rawValue)

    }
}

struct MenuItemsByCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsByCategoryView(category: .food)
    }
}
