import UIKit
import SpriteKit

class CustomScene: SKScene {
    
    let crab = SKSpriteNode()
    //var xPosition: Int? = nil
    //var yPosition: Int? = nil
    
    
    // Add and center child, initializing animation sequence
    override func sceneDidLoad() {
        super.sceneDidLoad()
        addChild(crab)
        
        /* Troubleshooting
        print("\(Model.shared.xPosition)")
        print("\(Model.shared.yPosition)")
        */
        
        if Model.shared.shouldCrab {
            crab.loadTextures(named: "WaitingCrab", forKey: SKSpriteNode.textureKey)
        } else {
            crab.loadTextures(named: "HappyCrab", forKey: SKSpriteNode.textureKey)
        }
        
        if Model.shared.xPosition != nil {
            crab.position = CGPoint(x: Model.shared.xPosition!, y: Model.shared.yPosition!)
        } else {
            crab.position = CGPoint(x: frame.midX, y: frame.midY)
        }
    }
    
    
    // Move to touch
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        // Fetch a touch or leave
        guard !touches.isEmpty, let touch = touches.first else { return }
        
        // Retrieve position
        let position = touch.location(in: self)
        Model.shared.xPosition = Int(crab.position.x)
        Model.shared.yPosition = Int(crab.position.y)
        
        /* Troubleshooting
        print("\(Model.shared.xPosition)")
        print("\(Model.shared.yPosition)")
        */
        
        // Create move action
        let actionDuration = 1.0
        let moveAction = SKAction.move(to: position, duration: actionDuration)
        let rollAction = SKAction.rotate(byAngle: CGFloat.pi * 2, duration: actionDuration)
        let zoomAction = SKAction.scale(by: 1.3, duration: 0.3)
        let unzoomAction = SKAction.scale(to: 1.0, duration: 0.1)
        let fadeAction = SKAction.fadeIn(withDuration: 0.3)
        let unfadeAction = SKAction.fadeOut(withDuration: 0.1)
        
        switch Model.shared.shouldZoom {
        case false:
            if Model.shared.shouldFade
            {
                let sequenceAction = SKAction.sequence([unfadeAction, moveAction, fadeAction])
                crab.run(sequenceAction)
            }
            else {
                crab.run(moveAction)
            }
        case true:
            if Model.shared.shouldFade
            {
                let sequenceAction = SKAction.sequence([zoomAction, unfadeAction, moveAction, fadeAction, unzoomAction])
                crab.run(sequenceAction)
            } else {
                let sequenceAction = SKAction.sequence([zoomAction, moveAction, unzoomAction])
                crab.run(sequenceAction)
            }
        }
        
        if Model.shared.shouldRoll {
            crab.run(rollAction)
        }
    }
}
