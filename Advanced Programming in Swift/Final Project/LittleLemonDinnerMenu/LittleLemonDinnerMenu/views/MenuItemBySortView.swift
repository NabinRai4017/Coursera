//
//  MenuItemBySortView.swift
//  LittleLemonDinnerMenu
//
//  Created by NAbin RAi on 06/04/2023.
//

import SwiftUI

struct MenuItemsBySortView: View {
    
    let sortBy: SortBy
    
    let columns = [
        GridItem(.adaptive(minimum: 70))
    ]
    
    var items: [MenuItem] {
        return menuItems.sorted{
            switch sortBy{
            case .price:
                return $0.price < $1.price
            case .alphabet:
                return $0.title < $1.title
            case .popular:
                return $0.orders < $1.orders
            }
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
        .navigationTitle(sortBy.rawValue)
    }
}

struct MenuItemsBySortView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsBySortView(sortBy: .price)
    }
}
