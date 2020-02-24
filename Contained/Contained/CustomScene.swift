//
//  CustomScene.swift
//  Contained
//
//  Created by Bradley Diroff on 2/24/20.
//  Copyright © 2020 Bradley Diroff. All rights reserved.
//

import SpriteKit

class CustomScene: SKScene {
    let crab = SKSpriteNode()
    
    // Add and center child, initializing animation sequence
    override func sceneDidLoad() {
        super.sceneDidLoad()
        addChild(crab)
        crab.loadTextures(named: Settings.shared.crabFace, forKey: SKSpriteNode.textureKey)
        
        if let startPoint = Settings.shared.lastPosition {
            crab.position = CGPoint(x: startPoint.0, y: startPoint.1)
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
        Settings.shared.lastPosition = (position.x, position.y)
        
        // Create move action
        let actionDuration = 1.0
        let moveAction = SKAction.move(to: position, duration: actionDuration)
        
        let rollAction = SKAction.rotate(byAngle: CGFloat.pi * 2, duration: actionDuration)
        let zoomAction = SKAction.scale(by: 1.3, duration: 0.3)
        let unzoomAction = SKAction.scale(to: 1.0, duration: 0.1)
        
        let smallAction = 0.5
        let fadeOutAction = SKAction.fadeOut(withDuration: smallAction)
        let fadeInAction = SKAction.fadeIn(withDuration: smallAction)
        
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
