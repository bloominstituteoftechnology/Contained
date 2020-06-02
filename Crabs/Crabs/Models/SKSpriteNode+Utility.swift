import SpriteKit

extension SKSpriteNode {
    static let textureKey = "Texture Key"
    
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
        let action = SKAction.animate(with: textures, timePerFrame: 0.03333)
        let foreverAction = SKAction.repeatForever(action)
        self.run(foreverAction, withKey: key)
    }
}

extension CGPoint {
    var magnitude: CGFloat {
        return CGPoint.magnitude(self)
    }
    
    static func magnitude(_ point: CGPoint) -> CGFloat {
        return sqrt((point.x * point.x) + (point.y * point.y)) // a^2 + b^2 = c^2
    }
    
    func distance(to otherPoint: CGPoint) -> CGFloat {
        let xFactor = self.x - otherPoint.x
        let yFactor = self.y - otherPoint.y
        return CGPoint.magnitude(CGPoint(x: xFactor, y: yFactor))
    }
}
