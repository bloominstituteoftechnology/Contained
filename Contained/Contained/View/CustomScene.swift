//
//  CustomScene.swift
//  Contained
//
//  Created by Chad Rutherford on 11/11/19.
//  Copyright © 2019 Chad Rutherford. All rights reserved.
//

import SpriteKit

class CustomScene: SKScene {
    let crab = SKSpriteNode()
    
    override func sceneDidLoad() {
        super.sceneDidLoad()
        addChild(crab)
        switch Settings.shared.happy {
        case true:
            crab.loadTextures(named: "HappyCrab", forKey: SKSpriteNode.textureKey)
        case false:
            crab.loadTextures(named: "WaitingCrab", forKey: SKSpriteNode.textureKey)
        }
        crab.position = Settings.shared.location
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard !touches.isEmpty, let touch = touches.first else { return }
        let position = touch.location(in: self)
        
        let actionDuration = 1.0
        let moveAction = SKAction.move(to: position, duration: actionDuration)
        let fadeOutAction = SKAction.fadeOut(withDuration: 0.1)
        let fadeInAction = SKAction.fadeIn(withDuration: 0.3)
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
        
        if Settings.shared.shouldFade {
            let fadeSequence = SKAction.sequence([fadeOutAction, moveAction, fadeInAction])
            crab.run(fadeSequence)
        }
        
        if Settings.shared.shouldRoll {
            crab.run(rollAction)
        }
        
        Settings.shared.location = position
    }
}
