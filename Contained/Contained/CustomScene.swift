//
//  CustomScene.swift
//  Contained
//
//  Created by Lambda_School_Loaner_204 on 10/14/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import SpriteKit

class CustomScene: SKScene {
    let crab = SKSpriteNode()

    // Add and center child, initializing animation sequence
    override func sceneDidLoad() {
        super.sceneDidLoad()
        addChild(crab)
        crab.loadTextures(named: "HappyCrab", forKey: SKSpriteNode.textureKey)
        crab.position = CGPoint(x: Settings.shared.pointX, y: Settings.shared.pointY)
        //crab.position = CGPoint(x: frame.midX, y: frame.midY)
    }
    
    // Move to touch
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        // Fetch a touch or leave
        guard !touches.isEmpty, let touch = touches.first else { return }
        
        // Retrieve position
        let position = touch.location(in: self)
        // Set setting positions
        Settings.shared.pointX = Double(position.x)
        Settings.shared.pointY = Double(position.y)
        
        // Create move action
        let actionDuration = 1.0
        let moveAction = SKAction.move(to: position, duration: actionDuration)
        
        let rollAction = SKAction.rotate(byAngle: CGFloat.pi * 2, duration: actionDuration)
        let zoomAction = SKAction.scale(by: 1.3, duration: 0.3)
        let unzoomAction = SKAction.scale(to: 1.0, duration: 0.1)
        
        // Create fade action
        //let fadeOutAction = SKAction.fadeOut(withDuration: 0.25)
        //let fadeInAction = SKAction.fadeIn(withDuration: 0.25)
        let fadeAlpha = SKAction.fadeAlpha(by: -0.9, duration: 0.5)
        let fadeInAlpha = SKAction.fadeAlpha(by: 0.9, duration: 0.5)
        
        
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
            let sequenceAction = SKAction.sequence([fadeAlpha, fadeInAlpha])
            crab.run(sequenceAction)
        }
    }
}
