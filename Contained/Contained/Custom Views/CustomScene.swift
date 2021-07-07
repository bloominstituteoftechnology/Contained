//
//  CustomScene.swift
//  Contained
//
//  Created by Casualty on 8/7/19.
//  Copyright © 2019 Thomas Dye. All rights reserved.
//

import SpriteKit

var currentCrabType = "HappyCrab"

class CustomScene: SKScene {
    let crab = SKSpriteNode()
    
    // Add and center child, initializing animation sequence
    override func sceneDidLoad() {
        super.sceneDidLoad()
        addChild(crab)
        if Settings.shared.crabHappy == true {
            currentCrabType = "WaitingCrab"
        } else {
            currentCrabType = "HappyCrab"
        }
        crab.loadTextures(named: currentCrabType, forKey: SKSpriteNode.textureKey)
        crab.position = CGPoint(x: frame.midX, y: frame.midY)
    }
    
    // Move to touch
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        // Fetch a touch or leave
        guard !touches.isEmpty, let touch = touches.first else { return }
        
        // Retrieve position
        let position = touch.location(in: self)
        
        // Create move action
        let actionDuration = 0.8
        let moveAction = SKAction.move(to: position, duration: actionDuration)
        let rollAction = SKAction.rotate(byAngle: CGFloat.pi * 2, duration: actionDuration)
        let zoomAction = SKAction.scale(by: 1.3, duration: 0.3)
        let unzoomAction = SKAction.scale(to: 1.0, duration: 0.1)
        let fadeInAction = SKAction.fadeIn(withDuration: 0.2)
        let fadeOutAction = SKAction.fadeOut(withDuration: 0.2)
        let newAction = SKAction.applyAngularImpulse(1.4, duration: 0.3)
        
        switch Settings.shared.shouldZoom {
        case false:
            crab.run(moveAction)
        case true:
            let sequenceAction = SKAction.sequence([zoomAction, moveAction, unzoomAction])
            crab.run(sequenceAction)
        }
        
        switch Settings.shared.shouldFade {
        case false:
            crab.run(moveAction)
        case true:
            let sequenceAction = SKAction.sequence([fadeOutAction, newAction, moveAction, fadeInAction])
            crab.run(sequenceAction)
        }

        if Settings.shared.shouldRoll {
            crab.run(rollAction)
        }
        
    }
}
