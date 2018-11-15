import Foundation
import UIKit
import SpriteKit

class CustomScene: SKScene {
    let crab = SKSpriteNode()
    
    override func sceneDidLoad() {
        super.sceneDidLoad()
        
        addChild(crab)
        crab.loadTextures(named: "HappyCrab", forKey: SKSpriteNode.textureKey)
        crab.position = CGPoint(x: frame.midX, y: frame.midY)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard !touches.isEmpty, let touch = touches.first else { return }
        
        let position = touch.location(in: self)
        
        let actionDuration = 1.0
        let moveAction = SKAction.move(to: position, duration: actionDuration)
        
        
        let rollAction = SKAction.rotate(byAngle: CGFloat.pi * 2, duration: actionDuration)
        let zoomAction = SKAction.scale(by: 1.3, duration: 0.3)
        let extraActionOnZoom = SKAction.fadeOut(withDuration: 0.5)
 

        let unzoomAction = SKAction.scale(by: 1.0, duration: 0.1)
        
        switch Model.shared.shouldZoom {
        case false:
            crab.run(moveAction)
        case true:
            let sequenceAction = SKAction.sequence([zoomAction, moveAction, unzoomAction, extraActionOnZoom])
            crab.run(sequenceAction)
        }
        
        if Model.shared.shouldRoll {
            crab.run(rollAction)
        }
        
    }
    
}
