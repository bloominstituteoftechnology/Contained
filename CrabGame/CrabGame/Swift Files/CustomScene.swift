//
//  CustomScene.swift
//  CrabGame
//
//  Created by David Williams on 12/4/19.
//  Copyright © 2019 david williams. All rights reserved.
//
import Foundation
import SpriteKit
import AudioToolbox

var whichCrab = "WaitingCrab"
class CustomScene: SKScene {
    let crab = SKSpriteNode()
    
    // Add and center child, initializing animation sequence
    override func sceneDidLoad() {
        super.sceneDidLoad()
        
        switch Settings.shared.changeCrab {
        case false:
            print("\(Settings.shared.changeCrab) for waitingCrab")
            whichCrab = "WaitingCrab"
        default:
            print("\(Settings.shared.changeCrab) for happyCrab")
            whichCrab = "HappyCrab"
        }
        
        addChild(crab)
        
        crab.loadTextures(named: whichCrab, forKey: SKSpriteNode.textureKey)
        crab.position = CGPoint(x: frame.midX, y: frame.midY)
        
    }
    
    // Move to touch
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {        if Settings.shared.shouldZoom && Settings.shared.shouldRoll {
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
        
        // Create move action
        let actionDuration = 1.0
        let moveAction = SKAction.move(to: position, duration: actionDuration)
        
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
