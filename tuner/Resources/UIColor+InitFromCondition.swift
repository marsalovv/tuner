
import UIKit

extension UIColor {
    
    convenience init(condition: Condition) {
        switch condition {
        case .up:
            self.init(displayP3Red: 0, green: 0, blue: 1, alpha: 1)
        case .down:
            self.init(displayP3Red: 1, green: 0, blue: 0, alpha: 1)
        case .equals:
            self.init(displayP3Red: 0, green: 1, blue: 0, alpha: 1)
        case .no:
            self.init(displayP3Red: 0, green: 0, blue: 0, alpha: 0)
        }
    }
    
}

