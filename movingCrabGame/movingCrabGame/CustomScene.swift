//
//  CustomScene.swift
//  movingCrabGame
//
//  Created by Hunter Oppel on 3/23/20.
//  Copyright © 2020 LambdaSchool. All rights reserved.
//

import SpriteKit

class CustomScene: SKScene {
    let crab = SKSpriteNode()
    
    // Add and center child, initializing animation sequence
    override func sceneDidLoad() {
        super.sceneDidLoad()
        addChild(crab)
        
        // Set whether is uses happy or waiting animations
        if Settings.shared.isHappy {
            crab.loadTextures(named: "HappyCrab", forKey: SKSpriteNode.textureKey)
        } else {
            crab.loadTextures(named: "WaitingCrab", forKey: SKSpriteNode.textureKey)
        }
        
        // Sets stored position if there is one
        if let position = Settings.shared.position {
            crab.position = position
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
        
        // Save position
        Settings.shared.position = position
        
        // Create move action
        let actionDuration = 1.0
        let moveAction = SKAction.move(to: position, duration: actionDuration)
        
        let rollAction = SKAction.rotate(byAngle: CGFloat.pi * 2, duration: actionDuration)
        let zoomAction = SKAction.scale(by: 1.3, duration: 0.3)
        let unzoomAction = SKAction.scale(to: 1.0, duration: 0.1)
        let fadeOutAction = SKAction.fadeOut(withDuration: 0.5)
        let fadeInAction = SKAction.fadeIn(withDuration: 0.5)
        
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
        
        if Settings.shared.shouldFade {
            let sequenceAction = SKAction.sequence([fadeOutAction, fadeInAction])
            crab.run(sequenceAction)
        }
    }
}
