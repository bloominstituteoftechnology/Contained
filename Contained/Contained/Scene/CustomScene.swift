import SpriteKit

class CustomScene: SKScene {
    let crab = SKSpriteNode()
    var starfield: SKEmitterNode!
    
    // Add and center child, initializing animation sequence
    override func sceneDidLoad() {
        super.sceneDidLoad()
        addChild(crab)
        switch Settings.shared.waitingCrab {
        case false:
            crab.loadTextures(named: "HappyCrab", forKey: SKSpriteNode.textureKey)
            crab.position = Settings.shared.recentPosition
        case true:
            crab.loadTextures(named: "WaitingCrab", forKey: SKSpriteNode.textureKey)
            crab.position = Settings.shared.recentPosition
        }
        
    }
    
    override func didMove(to view: SKView) {
        backgroundColor = UIColor.black
        
        starfield = SKEmitterNode(fileNamed: "Starfield")!
        starfield.position = CGPoint(x: 1024, y: 384)
        starfield.advanceSimulationTime(10)
        addChild(starfield)
        starfield.zPosition = -1

    }
    
    // Move to touch
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
            // Fetch a touch or leave
            guard !touches.isEmpty, let touch = touches.first else { return }
            
            // Retrieve position
            let position = touch.location(in: self)
            Settings.shared.recentPosition = position
            
        // Create move action
        let actionDuration = 1.0
        let moveAction = SKAction.move(to: position, duration: actionDuration)
        let fadeIn = SKAction.fadeIn(withDuration: 0.3)
        let fadeOut = SKAction.fadeOut(withDuration: 0.3)
        let rollAction = SKAction.rotate(byAngle: CGFloat.pi * 2, duration: actionDuration)
        let zoomAction = SKAction.scale(by: 1.3, duration: 0.3)
        let unzoomAction = SKAction.scale(to: 1.0, duration: 0.1)
        
        switch Settings.shared.shouldZoom {
        case false:
            crab.run(moveAction)
        case true:
            let sequenceAction = SKAction.sequence([zoomAction, moveAction, unzoomAction])
            crab.run(sequenceAction)
        }
        
        if Settings.shared.shouldRoll {
            crab.run(rollAction)
        }
        
        switch Settings.shared.shouldFade {
        case false:
            crab.run(moveAction)
        case true:
            let sequenceAction = SKAction.sequence([fadeOut, moveAction, fadeIn])
            crab.run(sequenceAction)
        }
    }
}
