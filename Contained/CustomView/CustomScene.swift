//
//  CustomScene.swift
//  Contained
//
//  Created by Bradley Yin on 7/22/19.
//  Copyright © 2019 bradleyyin. All rights reserved.
//

import SpriteKit

class CustomScene: SKScene {
    let crab = SKSpriteNode()
    
    let defaults = UserDefaults.standard
    
    // Add and center child, initializing animation sequence
    override func sceneDidLoad() {
        super.sceneDidLoad()
        addChild(crab)
        if Settings.shared.shouldHappy{
            crab.loadTextures(named: "HappyCrab", forKey: SKSpriteNode.textureKey)
        }else{
            crab.loadTextures(named: "WaitingCrab", forKey: SKSpriteNode.textureKey)
        }
        
        let x = defaults.float(forKey: "x")
        let y = defaults.float(forKey: "y")
        if x != 0.0 && y != 0.0 && Settings.shared.shouldStore{
            crab.position = CGPoint(x: CGFloat(x), y: CGFloat(y))
        }else{
            crab.position = CGPoint(x: frame.midX, y: frame.midY)
        }
        
    }
    
    // Move to touch
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        // Fetch a touch or leave
        guard !touches.isEmpty, let touch = touches.first else { return }
        
        // Retrieve position
        let position = touch.location(in: self)
        
        if Settings.shared.shouldStore{
            //store position
            let x = position.x
            let y = position.y
            
            
            defaults.set(x, forKey: "x")
            defaults.set(y, forKey: "y")
        }
        
        
        // Create move action
        let actionDuration = 1.0
        let moveAction = SKAction.move(to: position, duration: actionDuration)
        let xscaleAction = SKAction.scaleX(to: 1.5, duration: 0.3)
        let reverseXScaleAction = SKAction.scaleX(to: 1.0, duration: 0.1)
        
        let fadeAction = SKAction.fadeAlpha(to: 0.2, duration: 0.3)
        let unfadeAction = SKAction.fadeAlpha(to: 1.0, duration: 0.1)
        
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
        if Settings.shared.shouldStretch{
            let sequenceAction = SKAction.sequence([xscaleAction, moveAction, reverseXScaleAction])
            crab.run(sequenceAction)
        }
        if Settings.shared.shouldFade{
            let sequenceAction = SKAction.sequence([fadeAction, moveAction, unfadeAction])
            crab.run(sequenceAction)
        }
        
        
        if Settings.shared.shouldRoll {
            crab.run(rollAction)
        }
    }
}
