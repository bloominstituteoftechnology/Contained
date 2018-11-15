import UIKit

class Model {
    static let shared = Model()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
    //
    
    private(set) var lastPosition: CGPoint? = nil
    
    func updatPosition(position: CGPoint) {
        lastPosition = position

  }
    
    
    
}
