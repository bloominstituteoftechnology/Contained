import Foundation

class Settings {
    
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
    var shouldHappy = false
    var shouldFade = false
    var shouldFaster = false
}
