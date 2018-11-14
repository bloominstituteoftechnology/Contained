import UIKit
import SpriteKit

class CustomScene: SKScene {
    let crab = SKSpriteNode()
    
    // Add and center child, initializing animation sequence
    override func sceneDidLoad() {
        super.sceneDidLoad()
        
        addChild(crab)
        crab.position = CGPoint(x: frame.midX, y: frame.midY)
        crab.loadTextures(named: Model.shared.switchCrab(), forKey: SKSpriteNode.textureKey)
        // I should be able to pass this into my startPoint func just not sure what to pass into the function call. 
    }
    
    func startPoint(in view: Set<UITouch>){
        let touch = view.first
        let position: CGPoint = touch!.location(in: self)
    } // This gives me a CGpoint at the point of touch just not sure how to set it on line 12 above. 
    
    // Move to touch
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        // Fetch a touch or leave
        guard !touches.isEmpty, let touch = touches.first else { return }
        
        // Retrieve position
        let position = touch.location(in: self)
        
        // Create move action
        let actionDuration = 1.0
        let moveAction = SKAction.move(to: position, duration: actionDuration)
        
        let rollAction = SKAction.rotate(byAngle: CGFloat.pi * 2, duration: actionDuration)
        let zoomAction = SKAction.scale(by: 1.3, duration: 0.3)
        let unzoomAction = SKAction.scale(to: 1.0, duration: 0.1)
        let shrinkAction = SKAction.scale(to: 0.5, duration: 0.3)
        let fadeAction = SKAction.fadeAlpha(by: 0.1, duration: 0.3)
        
        switch Model.shared.shouldZoom {
        case false:
            crab.run(moveAction)
        case true:
            let sequenceAction = SKAction.sequence([zoomAction, moveAction, unzoomAction])
            crab.run(sequenceAction)
        }
        
        switch Model.shared.shouldRoll {
        case false:
            crab.run(moveAction)
        case true:
            crab.run(rollAction)
        }
        
        switch Model.shared.shouldGoCrazy {
        case false:
            crab.run(moveAction)
        case true:
            let crazySequence = SKAction.sequence([shrinkAction, fadeAction, unzoomAction])
            crab.run(crazySequence)
        }
    }
}
