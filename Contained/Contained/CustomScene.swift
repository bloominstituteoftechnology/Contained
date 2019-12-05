//
//  CustomScene.swift
//  Contained
//
//  Created by David Wright on 12/4/19.
//  Copyright © 2019 David Wright. All rights reserved.
//

import Foundation
import SpriteKit

class CustomScene: SKScene {
    let crab = SKSpriteNode()
    
    // Add and center child, initializing animation sequence
    override func sceneDidLoad() {
        super.sceneDidLoad()
        addChild(crab)
        crab.loadTextures(named: "HappyCrab", forKey: SKSpriteNode.textureKey)
        crab.position = Settings.shared.mostRecentTouchPoint ?? CGPoint(x: frame.midX, y: frame.midY)
    }
    
    // Move to touch
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        // Fetch a touch or leave
        guard !touches.isEmpty, let touch = touches.first else { return }
        
        // Retrieve position
        let position = touch.location(in: self)
        Settings.shared.mostRecentTouchPoint = position
        
        // Create move action
        let actionDuration = Settings.shared.actionDuration
        
        // Scale the move duration based on the distance to be moved
        // This will keep the move speed constant regardless of the distance moved
        let distanceToMove = Double(sqrt(pow(position.x - crab.position.x,2) + pow(position.y - crab.position.y,2)))
        let moveDuration = actionDuration * distanceToMove * 0.002
        
        let moveAction = SKAction.move(to: position, duration: moveDuration)
        
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
    }
}
