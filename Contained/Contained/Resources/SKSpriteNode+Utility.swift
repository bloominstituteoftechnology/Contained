import SpriteKit

extension SKSpriteNode {
    static let textureKey = "Texture Key"
    
    func loadImage(name: String) {
        self
    }
    
    // Load textures for a sprite node and run that sequence forever
    func loadTextures(named name: String, forKey key: String) {
        // Load atlas
        let atlas = SKTextureAtlas(named: name)
        
        // Collect and sort textures
        let textures = atlas.textureNames
            .sorted(by: <)
            .map({ atlas.textureNamed($0) })
        
        // Need at least one texture to continue
        guard !textures.isEmpty else { return }
        
        // Assign size
        self.size = textures[0].size()
        
        // Remove any prevous texture sequence
        self.removeAction(forKey: key)

        // Run texture sequence forever
        let action = SKAction.animate(with: textures, timePerFrame: 0.066)
        let foreverAction = SKAction.repeatForever(action)
        let pauseAction = SKAction.pause()
        self.run(foreverAction, withKey: key)
    }
}
