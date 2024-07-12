
import Foundation



extension Int {
    
    func add(num: Int) -> Int {
        return self + num
    }
    
    mutating func increase() {
        self = self + 1
    }
}

extension Double {
    
    func sqrt() -> Double {
        return self.squareRoot()
    }
}
