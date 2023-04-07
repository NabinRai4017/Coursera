//
//  MenuItemsOptionView.swift
//  LittleLemonDinnerMenu
//
//  Created by NAbin RAi on 05/04/2023.
//

import SwiftUI

struct MenuItemsOptionView: View {
    
    @Binding var presentedAsModal: Bool
    
    var body: some View {
        NavigationStack{
            List{
                Section {
                    ForEach(MenuCategory.allCases, id: \.self) { category in
                        NavigationLink {
                            MenuItemsByCategoryView(category: category)
                        } label: {
                            Text(category.rawValue)
                                .foregroundColor(.black)
                        }

                       
                    }
                } header: {
                    Text("SELECTED CATEGORIES")
                }
                
                Section {
                    ForEach(SortBy.allCases, id: \.self) { sortBy in
                        
                        NavigationLink {
                            MenuItemsBySortView(sortBy: sortBy)
                        } label: {
                            Text(sortBy.rawValue)
                                .foregroundColor(.black)
                        }
                    }
                } header: {
                    Text("SORT BY")
                }
            }
            .navigationTitle("Filter")
            .toolbar{
                Button {
                    self.presentedAsModal = false
                } label: {
                    Text("Done")
                }
                
            }
        }
    }
}

struct MenuItemsOptionView_Previews: PreviewProvider {
    
    @State static var value = false
    
    static var previews: some View {
        MenuItemsOptionView(presentedAsModal: $value)
    }
}
