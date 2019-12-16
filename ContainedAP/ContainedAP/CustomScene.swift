//
//  CustomScene.swift
//  ContainedAP
//
//  Created by Jorge Alvarez on 12/16/19.
//  Copyright © 2019 Jorge Alvarez. All rights reserved.
//

import Foundation
import SpriteKit

class CustomScene: SKScene {
    let crab = SKSpriteNode()
    var actionDuration = 1.0
    
    // Add and center child, initializing animation sequence
    override func sceneDidLoad() {
        super.sceneDidLoad()
        addChild(crab)
        
        if Settings.shared.ghostCrab {
            crab.alpha = 0.25
        }
        else {
            crab.alpha = 1.0
        }
        
        if Settings.shared.turboCrab {
            actionDuration = 0.1
        }
        else {
            actionDuration = 1.0
        }
        
        if Settings.shared.happyCrab {
            crab.loadTextures(named: "HappyCrab", forKey: SKSpriteNode.textureKey)
        }
        else {
            crab.loadTextures(named: "WaitingCrab", forKey: SKSpriteNode.textureKey)
        }
        // Old line
        //crab.loadTextures(named: "HappyCrab", forKey: SKSpriteNode.textureKey)
        
        if Settings.shared.lastPosition == CGPoint(x: 0.0, y: 0.0) {
        crab.position = CGPoint(x: frame.midX, y: frame.midY)
        }
        else {
            crab.position = Settings.shared.lastPosition
        }
        
        // Old line
        // crab.position = CGPoint(x: frame.midX, y: frame.midY)
    }
    
    // Move to touch
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        // Fetch a touch or leave
        guard !touches.isEmpty, let touch = touches.first else { return }
        
        // Retrieve position
        let position = touch.location(in: self)
        Settings.shared.lastPosition = position
        
        // Create move action
        // Old line
        //let actionDuration = 1.0
        let moveAction = SKAction.move(to: position, duration: actionDuration)
        
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
