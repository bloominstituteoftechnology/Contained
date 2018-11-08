import Foundation
class Model {
    static let shared = Model()
    private init() {}
    var shouldRoll = false
    var shouldZoom = false
    var shouldFade = false
    var shouldCrab = false // Probably could have came up with a better var name... but it matches... kinda
    var xPosition: Int? = nil
    var yPosition: Int? = nil
}
