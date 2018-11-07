import Foundation

class Model {
    static let shared = Model()
    private init() {}
    
    var shouldRoll = false
    var sholdZoom = false
}
