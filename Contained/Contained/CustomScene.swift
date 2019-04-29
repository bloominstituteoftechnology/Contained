//
//  CustomScene.swift
//  Contained
//
//  Created by Lisa Sampson on 4/29/19.
//  Copyright © 2019 Lisa M Sampson. All rights reserved.
//

import SpriteKit

class CustomScene: SKScene {
    let crab = SKSpriteNode()
    
    // Add and center child, initializing animation sequence
    override func sceneDidLoad() {
        super.sceneDidLoad()
        addChild(crab)
//        crab.loadTextures(named: "HappyCrab", forKey: SKSpriteNode.textureKey)
//        crab.position = CGPoint(x: frame.midX, y: frame.midY)
        
        if Settings.shared.happyCrab {
            crab.loadTextures(named: "HappyCrab", forKey: SKSpriteNode.textureKey)
        } else {
            crab.loadTextures(named: "WaitingCrab", forKey: SKSpriteNode.textureKey)
        }
        
        if Settings.shared.xCoord != nil {
            crab.position = CGPoint(x: Settings.shared.xCoord!, y: Settings.shared.yCoord!)
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
        Settings.shared.xCoord = Int(crab.position.x)
        Settings.shared.yCoord = Int(crab.position.y)
        
        // Create move action
        let actionDuration = 1.0
        let moveAction = SKAction.move(to: position, duration: actionDuration)
        
        let rollAction = SKAction.rotate(byAngle: CGFloat.pi * 2, duration: actionDuration)
        let zoomAction = SKAction.scale(by: 1.3, duration: 0.3)
        let unzoomAction = SKAction.scale(to: 1.0, duration: 0.1)
        let fadeAction = SKAction.fadeIn(withDuration: 0.1)
        let unfadeAction = SKAction.fadeOut(withDuration: 0.3)
        
        switch Settings.shared.shouldZoom {
        case false:
            if Settings.shared.shouldFade
            {
                let sequenceAction = SKAction.sequence([unfadeAction, moveAction, fadeAction])
                crab.run(sequenceAction)
            }
            else {
                crab.run(moveAction)
            }
        case true:
            if Settings.shared.shouldFade
            {
                let sequenceAction = SKAction.sequence([zoomAction, unfadeAction, moveAction, fadeAction, unzoomAction])
                crab.run(sequenceAction)
            } else {
                let sequenceAction = SKAction.sequence([zoomAction, moveAction, unzoomAction])
                crab.run(sequenceAction)
            }
        }
        
        if Settings.shared.shouldRoll {
            crab.run(rollAction)
        }
    }
}
