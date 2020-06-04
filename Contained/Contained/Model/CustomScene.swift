//
//  CustomScene.swift
//  Contained
//
//  Created by John McCants on 6/3/20.
//  Copyright © 2020 John McCants. All rights reserved.
//

import SpriteKit
import UIKit

class CustomScene: SKScene {
    let banana = SKSpriteNode()
    
    // Add and center child, initializing animation sequence
    override func sceneDidLoad() {
        super.sceneDidLoad()
        addChild(banana)
        banana.loadTextures(named: "Banana", forKey: SKSpriteNode.textureKey)
        banana.position = CGPoint(x: frame.midX, y: frame.midY)
    }
    
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
        

        switch Settings.shared.shouldZoom {
        case false:
                banana.run(moveAction)
        case true:
            let sequenceAction = SKAction.sequence([zoomAction, moveAction, unzoomAction])
                banana.run(sequenceAction)
        }
        
        if Settings.shared.shouldRoll {
            banana.run(rollAction)
        }
    }
}
