import Foundation

class Model {
    static let shared = Model()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
    var waiting = 0
    var clickCount = 0
    var position = (0.0,0.0)
    
}
