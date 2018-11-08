import UIKit

class Model {
    static let shared = Model()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
    var shouldGoCrazy = false
    
    var segmentName = "HappyCrab"
    var segmentIndex = 0
    
    func switchCrab() -> String{
        switch segmentIndex {
        case 0:
            segmentName = "HappyCrab"
        case 1:
            segmentName = "WaitingCrab"
        default:
            break
        }
        return segmentName
    }
    
}
