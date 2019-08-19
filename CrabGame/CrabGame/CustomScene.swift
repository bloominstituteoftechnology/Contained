//
//  CustomScene.swift
//  CrabGame
//
//  Created by Jordan Christensen on 8/20/19.
//  Copyright © 2019 Mazjap Co Technologies. All rights reserved.
//

import Foundation
import UIKit
import SpriteKit

class CustomScene: SKScene {
    let crab = SKSpriteNode()
    
    static let sharedCrabCS = CustomScene()
    
    var timer = Timer()
    var totalSecond = 10
    
    // Add and center child, initializing animation sequence
    override func sceneDidLoad() {
        super.sceneDidLoad()
        addChild(crab)
        crab.loadTextures(named: "HappyCrab", forKey: SKSpriteNode.textureKey)
        crab.position = CGPoint(x: frame.midX, y: frame.midY)
        
    }
    
    
    // Move to touch
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        crab.loadTextures(named: "HappyCrab", forKey: SKSpriteNode.textureKey)
        
        if !timer.isValid {
            startTimer()
        }
        if totalSecond > 0 {
            self.totalSecond = 10
        } else {
            startTimer()
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
    
    func returnToMid() {
        crab.position = CGPoint(x: frame.midX, y: frame.midY)
    }
    
    func startTimer() {
        totalSecond = 10
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
    }
    
    @objc func updateTime() {
        
        print(timeFormatted(totalSecond))
        
        if totalSecond != 0 {
            totalSecond -= 1
        } else {
            endTimer()
        }
    }
    
    func endTimer() {
        crab.loadTextures(named: "WaitingCrab", forKey: SKSpriteNode.textureKey)
        timer.invalidate()
    }
    
    func timeFormatted(_ totalSeconds: Int) -> String {
        let seconds: Int = totalSeconds % 60
        return String(format: "0:%02d", seconds)
    }
}
