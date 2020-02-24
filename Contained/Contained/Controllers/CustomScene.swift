//
//  CustomScene.swift
//  Contained
//
//  Created by Lambda_School_Loaner_259 on 2/24/20.
//  Copyright © 2020 DeVitoC. All rights reserved.
//

import SpriteKit

class CustomScene: SKScene {
    let crab = SKSpriteNode()
    
    // Add and center child, initializing animation sequence
    override func sceneDidLoad() {
        super.sceneDidLoad()
        addChild(crab)
        if Settings.shared.crabType == "HappyCrab" {
            crab.loadTextures(named: "HappyCrab", forKey: SKSpriteNode.textureKey)
        } else {
            crab.loadTextures(named: "WaitingCrab", forKey: SKSpriteNode.textureKey)
        }
        
        crab.position = CGPoint(x: frame.midX, y: frame.midY)
    }
    
    // Move to touch
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        // Fetch a touch of leave
        guard !touches.isEmpty, let touch = touches.first else { return }
        
        // retrieve position
        let position = touch.location(in: self)
        
        // Create move action, normal or slow mode
        var actionDuration: Double
        var positiveDuration: Double
        var negativeDuration: Double
        
        if Settings.shared.fastOrSlow {
            actionDuration = 3.0
            positiveDuration = 0.9
            negativeDuration = 0.3
        } else {
            actionDuration = 1.0
            positiveDuration = 0.3
            negativeDuration = 0.1
        }
        
        let moveAction = SKAction.move(to: position, duration: actionDuration)
        let rollAction = SKAction.rotate(byAngle: CGFloat.pi*2, duration: actionDuration)
        let zoomAction = SKAction.scale(by: 1.3, duration: positiveDuration)
        let unzoomAction = SKAction.scale(to: 1.0, duration: negativeDuration)
        let colorizeAction = SKAction.colorize(with: .blue, colorBlendFactor: 1.0, duration: positiveDuration)
        let uncolorizeAction = SKAction.colorize(with: .blue, colorBlendFactor: 0.0, duration: negativeDuration)
        
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
        
        if Settings.shared.shouldColorize {
            let sequenceAction = SKAction.sequence([colorizeAction, moveAction, uncolorizeAction])
            crab.run(sequenceAction)
        }
    }
}
