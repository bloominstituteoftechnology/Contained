//
//  CustomScene.swift
//  Contained
//
//  Created by Claudia Contreras on 2/12/20.
//  Copyright © 2020 thecoderpilot. All rights reserved.
//

import SpriteKit

class CustomScene: SKScene {
    
    let crab = SKSpriteNode()
    
    //Add and center child, initializing animation sequence
    override func sceneDidLoad() {
        super.sceneDidLoad()
        addChild(crab)
        //set the Texture based on the user input
        if Settings.shared.crabAttitude {
            crab.loadTextures(named: "WaitingCrab", forKey: SKSpriteNode.textureKey)
        } else {
            crab.loadTextures(named: "HappyCrab", forKey: SKSpriteNode.textureKey)
        }
        crab.position = CGPoint(x: frame.midX, y: frame.midY)
    }
    
    //Move to touch
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //Fetch a touch or leave
        guard !touches.isEmpty, let touch = touches.first else { return }
        
        //Retrieve position
        let position = touch.location(in: self)
        
        //Create move action
        let actionDuration = 1.0
        let moveAction = SKAction.move(to: position, duration: actionDuration)
        
        let rollAction = SKAction.rotate(byAngle: CGFloat.pi * 2, duration: actionDuration)
        let zooomAction = SKAction.scale(by: 1.3, duration: 0.3)
        let unzoomAction = SKAction.scale(to: 1.0, duration: 0.1)
        
        //Add Fade
        let fadeInAction = SKAction.fadeIn(withDuration: 0.5)
        let fadeOutAction = SKAction.fadeOut(withDuration: 0.5)
        
        switch Settings.shared.shouldZoom {
        case false:
            crab.run(moveAction)
        case true:
            let sequenceAction = SKAction.sequence([zooomAction, moveAction, unzoomAction])
            crab.run(sequenceAction)
        }
        
        if Settings.shared.shouldRoll {
            crab.run(rollAction)
        }
        
        //run fade in
        if Settings.shared.shouldFade {
            let seq:SKAction = SKAction.sequence( [ fadeOutAction, fadeInAction])
            crab.run(seq)
        }

    }
    
}
