//
//  CustomScene.swift
//  CrabGame
//
//  Created by Shawn Gee on 2/24/20.
//  Copyright © 2020 Swift Student. All rights reserved.
//

import Foundation
import SpriteKit

class CustomScene: SKScene {
    let crab = SKSpriteNode()

    var sicknessFactor: CGFloat = 0.0 {
        didSet {
            guard Settings.shared.crabIsHappy else { return }
            if oldValue < 0.6 && sicknessFactor >= 0.6 {
                crab.loadTextures(named: "WaitingCrab", forKey: SKSpriteNode.textureKey)
            }
            if oldValue >= 0.2 && sicknessFactor < 0.2 {
                crab.loadTextures(named: "HappyCrab", forKey: SKSpriteNode.textureKey)
            }
        }
    }
    
    var recoveryTimer: Timer?
    
    func startRecoveryTimer() {
        recoveryTimer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { _ in
            if self.sicknessFactor > 0 {
                self.sicknessFactor -= 0.05
                self.updateSickness()
            }
        })
    }
    
    func stopRecoveryTimer() {
        recoveryTimer?.invalidate()
    }
    
    // Add and center child, initializing animation sequence
    override func sceneDidLoad() {
        super.sceneDidLoad()
        addChild(crab)
        
        let selectedTextureName = Settings.shared.crabIsHappy ? "HappyCrab" : "WaitingCrab"
        crab.loadTextures(named: selectedTextureName, forKey: SKSpriteNode.textureKey)
        
        if let lastCrabPosition = Settings.shared.lastCrabPosition {
            crab.position = lastCrabPosition
        } else {
            crab.position = CGPoint(x: frame.midX, y: frame.midY)
        }
        
        if Settings.shared.motionSicknessEnabled {
            startRecoveryTimer()
        }
    }
    
    //Move to touch
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
        
        switch  Settings.shared.shouldZoom {
        case false:
            crab.run(moveAction)
        case true :
            let sequenceAction = SKAction.sequence([zoomAction, moveAction, unzoomAction])
            crab.run(sequenceAction)
        }
        
        if Settings.shared.shouldRoll {
            if Settings.shared.motionSicknessEnabled {
                sicknessFactor += 0.05
                updateSickness()
            }
            crab.run(rollAction)
        }
    }
    
    func updateSickness() {
        print(sicknessFactor)
        let sicknessAction = SKAction.colorize(with: .systemGreen, colorBlendFactor: sicknessFactor, duration: 0.5)
        crab.run(sicknessAction)
    }
    
    func save() {
        Settings.shared.lastCrabPosition = crab.position
        recoveryTimer?.invalidate()
    }
}
