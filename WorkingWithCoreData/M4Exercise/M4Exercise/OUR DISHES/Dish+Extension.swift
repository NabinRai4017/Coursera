import Foundation
import CoreData
import SwiftUI


extension Dish {
    
    static func createDishesFrom(menuItems:[MenuItem],
                                 _ context:NSManagedObjectContext) {
        for menu in menuItems{
            if let doesExists = exists(name: menu.title, context){
                if !doesExists{
                    let dish = Dish(context: context)
                    dish.name = menu.title
                    if let price = Float(menu.price){
                        dish.price = price
                    }
                }
            }
        }
    }
    
    

    
}
