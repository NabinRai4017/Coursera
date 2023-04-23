import Foundation

struct JSONMenu: Codable {
    let menu: [MenuItem]
    
    enum Codingkeys: String, CodingKey{
        case menu = "menu"
    }
}


struct MenuItem: Codable, Identifiable, Hashable {
    let id = UUID()
    let title: String
    let price: String
    
    enum Codingkeys: String, CodingKey{
        case title = "title"
        case price = "price"
    }
}
