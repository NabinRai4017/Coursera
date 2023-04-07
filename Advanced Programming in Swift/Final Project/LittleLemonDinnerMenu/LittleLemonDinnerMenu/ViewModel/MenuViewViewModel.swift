//
//  MenuViewViewModel.swift
//  LittleLemonDinnerMenu
//
//  Created by NAbin RAi on 05/04/2023.
//

import Foundation


class MenuViewViewModel: ObservableObject{
    
    @Published var presentingModal: Bool = false
    

    
    
    var foods: [MenuItem]{
        return menuItems.filter{
            $0.category == .food
        }
    }
    
    var drinks: [MenuItem]{
        return menuItems.filter{
            $0.category == .drink
        }
    }
    
    var desserts: [MenuItem]{
        return menuItems.filter{
            $0.category == .dessert
        }
    }
    
}
