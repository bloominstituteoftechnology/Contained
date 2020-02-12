//
//  CustomScene.swift
//  Contained
//
//  Created by David Williams on 2/12/20.
//  Copyright © 2020 david williams. All rights reserved.
//

import Foundation
import SpriteKit
import AudioToolbox

var whichCrab = ""
var gameStart: Bool = false
var rollAmount = 0
var zoomAmount: Double = 0.0
class CustomScene: SKScene {
    
    let crab = SKSpriteNode()
        
    // Add and center child, initializing animation sequence
    override func sceneDidLoad() {
        super.sceneDidLoad()
        switch Settings.shared.shouldChangeCrab {
        case false:
            whichCrab = "WaitingCrab"
        default:
            whichCrab = "HappyCrab"
        }
        
        addChild(crab)
        switch Settings.shared.shouldFade {
        case false:
            crab.alpha = 1
        default:
            crab.alpha = 0.5
        }
        crab.loadTextures(named: whichCrab, forKey: SKSpriteNode.textureKey)
        if !gameStart {
            crab.position = CGPoint(x: frame.midX, y: frame.midY)
        } else {
            crab.position = Settings.shared.lastPosition
        }
    }
    
    // Move to touch
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
// Determine which sound file to play depending on the setting selected
        if Settings.shared.shouldZoom && Settings.shared.shouldRoll {
            playSound(filename: "Male_Exclamation_1", ext: ".wav")
        } else if Settings.shared.shouldRoll {
            playSound(filename: "oh-no1", ext: ".wav")
        } else  if Settings.shared.shouldZoom {
            playSound(filename: "oh yeah", ext: ".wav")
        } else {
            playSound(filename: "gravelwalk", ext: ".wav")
        }
        // Fetch a touch or leave
        guard !touches.isEmpty, let touch = touches.first else { return }
        // Retrieve position
        let position = touch.location(in: self)
        // Set last touch position for return to game screen
        gameStart = !gameStart
        Settings.shared.lastPosition = position
        // Create move action
        let actionDuration = 1.0
        let moveAction = SKAction.move(to: position, duration: actionDuration)
        if Settings.shared.rollFast {
         rollAmount = 4
        } else {
            rollAmount = 2
        }
        let rollAction = SKAction.rotate(byAngle: CGFloat.pi * CGFloat(rollAmount), duration: actionDuration)
        if Settings.shared.zoomClose {
            zoomAmount = 2.6
        } else {
            zoomAmount = 1.3
        }
        let zoomAction = SKAction.scale(by: CGFloat(zoomAmount), duration: 0.3)
        let unzoomAction = SKAction.scale(to: 1.0, duration: 0.1)
        
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
    }
    
    func playSound(filename: String, ext: String) {
        if let soundURL = Bundle.main.url(forResource: filename, withExtension: ext) {
            var mySound: SystemSoundID = 0
            AudioServicesCreateSystemSoundID(soundURL as CFURL, &mySound)
            AudioServicesPlaySystemSound(mySound);
        }
    }
    
}

