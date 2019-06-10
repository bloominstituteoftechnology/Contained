//
//  CustomScene.swift
//  Contained
//
//  Created by Jake Connerly on 6/10/19.
//  Copyright © 2019 jake connerly. All rights reserved.
//

import SpriteKit


class CustomScene: SKScene {
    let crab = SKSpriteNode()
    
    // Add and center child, initializing animation sequence
    override func sceneDidLoad() {
        super.sceneDidLoad()
        addChild(crab)
        if Settings.shared.crabChoice == .madCrab {
            crab.loadTextures(named: "WaitingCrab", forKey: SKSpriteNode.textureKey)
        }else {
            crab.loadTextures(named: "HappyCrab", forKey: SKSpriteNode.textureKey)
        }
        
        crab.position = Settings.shared.crabPosition
        
    }
    
    // Move to touch
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        // Fetch a touch or leave
        guard !touches.isEmpty, let touch = touches.first else { return }
        
        // Retrieve position
        let position = touch.location(in: self)
        
        //play sound on touch
        let soundAction = SKAction.playSoundFileNamed("crab.mp3", waitForCompletion: false)
        
        // Create move action
        let actionDuration = 1.0
        let moveAction = SKAction.move(to: position, duration: actionDuration)
        let moveSequence = SKAction.sequence([soundAction, moveAction])
        let rollAction = SKAction.rotate(byAngle: CGFloat.pi * 2, duration: actionDuration)
        let rollSequence = SKAction.sequence([soundAction, rollAction])
        let zoomAction = SKAction.scale(by: 1.3, duration: 0.3)
        let unzoomAction = SKAction.scale(to: 1.0, duration: 0.1)
        
        Settings.shared.crabPosition = position
        
        switch Settings.shared.shouldZoom {
        case false:
            
            crab.run(moveSequence)
        case true:
            let sequenceAction = SKAction.sequence([zoomAction, soundAction, moveAction, unzoomAction])
            crab.run(sequenceAction)
        }
        
        if Settings.shared.shouldRoll {
            crab.run(rollSequence)
        }
    }
    
}
