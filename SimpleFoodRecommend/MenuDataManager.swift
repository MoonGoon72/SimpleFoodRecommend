import Foundation
enum Menu: String {
    case pizza
    case chicken
    case pasta
    case hamburger
    
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

class MenuDataManager:ObservableObject {
    
}
