import Foundation
import SpriteKit

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
    var shouldFade = false
    var waitingCrab = false
    var recentPosition = CGPoint()
}
