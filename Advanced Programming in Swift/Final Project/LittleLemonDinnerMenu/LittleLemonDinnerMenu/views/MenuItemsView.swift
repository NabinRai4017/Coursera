//
//  ContentView.swift
//  LittleLemonDinnerMenu
//
//  Created by NAbin RAi on 05/04/2023.
//

import SwiftUI

struct MenuItemsView: View {
    
    @ObservedObject var viewModel = MenuViewViewModel()
    
    let columns = [
        GridItem(.adaptive(minimum: 70))
    ]
    
    
    var body: some View {
        NavigationStack{
            ScrollView{
                
                LazyVGrid(columns: columns, alignment: .leading, spacing: 16) {
                    
                    Section(header: Text("Food").font(.title)) {
                        ForEach(viewModel.foods) { food in
                            NavigationLink {
                                MenuItemsDetailView(menuItem: food)
                            } label: {
                                MenuItemCellView(menuItem: food)
                            }
                        }
                    }
                    
                    Section(header: Text("Drinks").font(.title)) {
                        ForEach(viewModel.drinks){ drink in
                            NavigationLink {
                                MenuItemsDetailView(menuItem: drink)
                            } label: {
                                MenuItemCellView(menuItem: drink)
                            }
                        }
                    }
                    
                    Section(header: Text("Dessert").font(.title)) {
                        ForEach(viewModel.desserts){ dessert in
                            NavigationLink {
                                MenuItemsDetailView(menuItem: dessert)
                            } label: {
                                MenuItemCellView(menuItem: dessert)
                            }
                        }
                    }
                    
                }
                .padding(.horizontal)
            }
            
            .navigationTitle("Menu")
            
            .toolbar{
                Button {
                    self.viewModel.presentingModal = true
                } label: {
                    Image(systemName: "list.dash")
                }
                
            }
            
        }
        .sheet(isPresented: $viewModel.presentingModal){
            MenuItemsOptionView(presentedAsModal: $viewModel.presentingModal)
        }
    }
}

struct MenuItemsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsView()
    }
}
