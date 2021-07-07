//
//  CustomScene.swift
//  Contained
//
//  Created by Ryan Murphy on 5/6/19.
//  Copyright © 2019 Ryan Murphy. All rights reserved.
//

import Foundation
import SpriteKit
import AVFoundation

class CustomScene: SKScene {
    let crab = SKSpriteNode()
    var audioPlayer = AVAudioPlayer()
    // Add and center child, initializing animation sequence
    override func sceneDidLoad() {
        super.sceneDidLoad()
        addChild(crab)
        
        if Settings.shared.sadCrab == false {
            crab.loadTextures(named: "HappyCrab", forKey: SKSpriteNode.textureKey)} else { crab.loadTextures(named: "WaitingCrab", forKey: SKSpriteNode.textureKey)}
        
        
        crab.position = CGPoint(x: frame.midX, y: frame.midY)
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
        
        // create audio
        let screamAction = SKAction.playSoundFileNamed("Scream\(Int.random(in: 0...9))", waitForCompletion: false)
        
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
        if Settings.shared.shouldScream {
            crab.run(screamAction)
        }
        
        
    }
    
    
    
    
    
}
