//
//  CustomScence.swift
//  CrabGame
//
//  Created by Nick Nguyen on 1/27/20.
//  Copyright © 2020 Nick Nguyen. All rights reserved.
//

import SpriteKit

class CustomScene: SKScene  {
    let crab = SKSpriteNode()
   
      var userDefault = UserDefaults.standard
 
    // Add and center child, initializing animation sequence
    override func sceneDidLoad() {
        super.sceneDidLoad()
         addChild(crab)
        
        //Stretch 1
        let newPosition =  userDefault.array(forKey: "Position") as? [CGFloat]
        crab.position =  CGPoint(x: ((newPosition?[0] ?? frame.midX)), y: ((newPosition?[1] ?? frame.midY)))
   
      //Stretch 2 & 3
        setUpZoomSetting()
        setUpCrabSetting()
        setUpRollSetting()
        
    }
    
    private func setUpZoomSetting() {
          let zoomValue = userDefault.bool(forKey: "Zoom")
        if zoomValue == true {
            let cameraNode = SKCameraNode()
                   cameraNode.position = CGPoint(x: (scene?.size.width ?? 2) / 2, y: (scene?.size.height ?? 2) / 2 )
                   scene?.addChild(cameraNode)
                   scene?.camera = cameraNode
                   
                   let zoom = SKAction.scale(to: 0.25, duration: 1)
                   cameraNode.run(zoom)
        }
    }
    
    private  func setUpCrabSetting() {
        let value = userDefault.bool(forKey: "CrabSetting")
        if value == true {
            crab.loadTextures(named: "HappyCrab", forKey: SKSpriteNode.textureKey)
        } else {
            crab.loadTextures(named: "WaitingCrab", forKey: SKSpriteNode.textureKey)
        }
    }
    
    private func setUpRollSetting() {
        let rollValue = userDefault.bool(forKey: "Roll")
        if rollValue == true {
            let rotateAction = SKAction.rotate(byAngle: 1, duration: 0.5)
            let repeatAction = SKAction.repeatForever(rotateAction)
            crab.run(repeatAction)
        }
    }
    // Move to touch
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        // Fetch a touch or leave
        guard !touches.isEmpty, let touch = touches.first else { return }
        
        // Retrieve position
        let position = touch.location(in: self)
      
        let x = Int(position.x)
        let y = Int(position.y)
        let postitionArray = [position.x,position.y]
        userDefault.set(postitionArray as [CGFloat], forKey: "Position")
        
        
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
}
