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
                return "π"
            case .chicken:
                return "π"
            case .pasta:
                return "π"
            case .hamburger:
                return "π"
            }
        }
    }
    
    func recommendMenu() -> String {
        if let randomMenu = Menus.allCases.randomElement() {
            return randomMenu.rawValue
        } else {
            return "μΆμ²ν΄λλ¦¬κ³  μΆμκ² μλ€μ"
        }
    }
}
