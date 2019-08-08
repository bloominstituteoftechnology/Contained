//
//  CustomScene.swift
//  Contained
//
//  Created by Fabiola S on 8/6/19.
//  Copyright © 2019 Fabiola Saga. All rights reserved.
//

import SpriteKit

class CustomScene: SKScene {
    let crab = SKSpriteNode()
    
    
    override func sceneDidLoad() {
        super.sceneDidLoad()
        addChild(crab)
        updateCrab()
        crab.position = CGPoint(x: frame.midX, y: frame.midY)
        
    }
    
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard !touches.isEmpty, let touch = touches.first else { return }
        
        let position = touch.location(in: self)
        
        let actionDuration = 1.0
        let moveAction = SKAction.move(to: position, duration: actionDuration)
        
        let rollAction = SKAction.rotate(byAngle: CGFloat.pi * 2, duration: actionDuration)
        let zoomAction = SKAction.scale(by: 1.3, duration: 0.3)
        let unZoomAction = SKAction.scale(to: 1.0, duration: 0.1)
        let ghostAction = SKAction.fadeOut(withDuration: 10)
        
        
        switch Settings.shared.shouldZoom {
        case false:
            crab.run(moveAction)
        case true:
            let sequenceAction = SKAction.sequence([zoomAction, moveAction, unZoomAction])
            crab.run(sequenceAction)
        }
        
        if Settings.shared.shouldRoll {
            crab.run(rollAction)
        }
        
        if Settings.shared.shouldFadeIn {
            crab.run(ghostAction)
        }
    }
    
    // MARK: Stretch Goals 1 & 3
    public override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard !touches.isEmpty, let touch = touches.first else { return }
        
        let position = touch.location(in: self)
        let actionDuration = 1.0
        SKAction.move(to: position, duration: actionDuration)
    }
    
    func updateCrab() {
        if Settings.shared.changeMood == true {
            crab.loadTextures(named: "HappyCrab", forKey: SKSpriteNode.textureKey)
        } else {
            crab.loadTextures(named: "WaitingCrab", forKey: SKSpriteNode.textureKey)
        }
        
        
    }
    
    

    
}
