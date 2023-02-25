import Foundation

class MenuDataManager:ObservableObject {
    enum Menus:String, CaseIterable {
        case pizza = "Pizza"
        case chicken = "Chicken"
        case pasta = "Pasta"
        case hamburger = "Hamburger"
        
        var menuImoji: String {
            switch self {
            case .pizza:
                return "🍕"
            case .chicken:
                return "🍗"
            case .pasta:
                return "🍝"
            case .hamburger:
                return "🍔"
            }
        }
    }
    
    func recommendMenu() -> String {
        if let randomMenu = Menus.allCases.randomElement() {
            return randomMenu.rawValue
        } else {
            return "추천해드리고 싶은게 없네요"
        }
    }
}
