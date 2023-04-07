//
//  MenuCategory.swift
//  LittleLemonDinnerMenu
//
//  Created by NAbin RAi on 05/04/2023.
//

import Foundation


enum MenuCategory: String, CaseIterable{
    case food = "Food"
    case drink = "Drink"
    case dessert = "Dessert"
}

enum SortBy: String, CaseIterable{
    case popular = "Most Popular"
    case price = "Price $-$$$"
    case alphabet = "A-Z"
 }
