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
    let walkSpeed: CGFloat = 450.0
    let squishScale: CGFloat = 0.5
    let squishDurations = (0.25, 0.05)
    let spinDuration = 0.6
    let zoomDuration = 0.4
    let zoomScale: CGFloat = 1.5
    let ghostAlpha: CGFloat = 0.2
    let ghostDurations = (0.3, 0.3)
    
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
        guard !touches.isEmpty, let touchPoint = touches.first else { return }
        
        let newPosition = touchPoint.location(in: self)
        
        runCrab(to: newPosition)
        
        Settings.shared.lastTouchPoint = newPosition
    }
    
    private func runCrab(to newPosition: CGPoint) {
        let oldPosition = crab.position
        let walkDistance = oldPosition.distance(to: newPosition)
        let walkDuration = Double(walkDistance / walkSpeed)
        let moveAction = SKAction.move(to: newPosition, duration: walkDuration)
        
        var actions: [SKAction] = []
        
        // begin constructing action sequence
        var ghostReappearance: SKAction? = nil
        if Settings.shared.isGhost {
            let ghostDisappearance = SKAction.fadeAlpha(to: ghostAlpha, duration: ghostDurations.0)
            ghostReappearance = SKAction.fadeAlpha(to: 1.0, duration: ghostDurations.1)
            
            actions.append(ghostDisappearance)
        }
        
        if Settings.shared.shouldSquish {
            let squishSequence = SKAction.sequence([
                SKAction.scaleY(to: CGFloat(squishScale), duration: squishDurations.0),
                SKAction.scaleY(to: 1, duration: squishDurations.1)
            ])
            
            crab.run(squishSequence)
        }
        
        if Settings.shared.shouldZoom { // I find this easier to read
            // zoom calculations not run unless setting is activated
            let zoomAction = SKAction.scale(to: CGFloat(zoomScale), duration: zoomDuration * 0.75)
            let unzoomAction = SKAction.scale(to: 1.0, duration: zoomDuration * 0.25)
            
            actions.append(contentsOf: [zoomAction, moveAction, unzoomAction])
        } else {
            actions.append(moveAction)
        }
        
        if Settings.shared.shouldRoll {
            let rollAction = SKAction.rotate(byAngle: CGFloat.pi * 2, duration: spinDuration)
            crab.run(rollAction)
        }
        
        if let reappear = ghostReappearance { actions.append(reappear) }
        
        // run sequence
        let sequenceAction = SKAction.sequence(actions)
        crab.run(sequenceAction)
    }
    
}
