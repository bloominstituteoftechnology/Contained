//
//  CustomScene.swift
//  Crabs
//
//  Created by Jon Bash on 2019-10-14.
//  Copyright © 2019 Jon Bash. All rights reserved.
//

import SpriteKit

class CustomScene: SKScene {
    let crab = SKSpriteNode()
    
    // crab options
    let walkSpeed = 450.0
    let spinDuration = 0.6
    let zoomDuration = 0.4
    let zoomScale = 1.5
    
    override func sceneDidLoad() {
        super.sceneDidLoad()
        addChild(crab)
        let crabTexture: String
        if Settings.shared.happyCrab {
            crabTexture = "HappyCrab"
        } else {
            crabTexture = "WaitingCrab"
        }
        crab.loadTextures(named: crabTexture, forKey: SKSpriteNode.textureKey)
        
        if let lastTouchPoint = Settings.shared.lastTouchPoint {
            crab.position = lastTouchPoint
        } else {
            crab.position = CGPoint(x: frame.midX, y: frame.midY)
        }
    }
    
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard !touches.isEmpty, let touch = touches.first else { return }
        
        let oldPosition = crab.position
        let newPosition = touch.location(in: self)
        let walkDistance = oldPosition.distance(to: newPosition)
        let walkDuration = Double(walkDistance) / walkSpeed
        
        let moveAction = SKAction.move(to: newPosition, duration: walkDuration)
        
        if Settings.shared.shouldZoom { // I find this easier to read
            // zoom calculations not run unless setting is activated
            let zoomAction = SKAction.scale(to: CGFloat(zoomScale), duration: zoomDuration * 0.75)
            let unzoomAction = SKAction.scale(to: 1.0, duration: zoomDuration * 0.25)
            
            let sequenceAction = SKAction.sequence([zoomAction, moveAction, unzoomAction])
            crab.run(sequenceAction)
        } else {
            crab.run(moveAction)
        }
        
        if Settings.shared.shouldRoll {
            let rollAction = SKAction.rotate(byAngle: CGFloat.pi * 2, duration: spinDuration)
            crab.run(rollAction)
        }
        
        Settings.shared.lastTouchPoint = newPosition
    }
}
