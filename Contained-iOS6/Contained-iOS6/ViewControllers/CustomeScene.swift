//
//  CustomeScene.swift
//  Contained-iOS6
//
//  Created by Hector Steven on 4/29/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

import UIKit
import SpriteKit



class CustomeScene: SKScene {
	var settingsController: SettingsController? {
		didSet {
			if let c = settingsController {
				let x = c.setting.position_x
				let y = c.setting.position_y
				if x != CGFloat(0) &&  y != CGFloat(0) {
					crab.position = CGPoint(x: x, y: y)
				}
				
				if c.setting.happyCrab == true {
					crab.loadTextures(named: "HappyCrab", forKey: SKSpriteNode.textureKey)
				} else {
					crab.loadTextures(named: "WaitingCrab", forKey: SKSpriteNode.textureKey)
				}
			}
			
		}
	}
	
	let crab = SKSpriteNode()
	
	
	
	// Add and center child, initializing animation sequence
	override func sceneDidLoad() {
		super.sceneDidLoad()
		
		addChild(crab)
		
		
		crab.loadTextures(named: "HappyCrab", forKey: SKSpriteNode.textureKey)

		crab.position = CGPoint(x: frame.midX, y: frame.midY)

	}
	
	override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
		guard let touch = touches.first else { return }
		let position = touch.location(in: self)
		
		if let sc = settingsController {
			sc.setPosition(position.x, position.y)
		}
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
		
		
		guard let sc = settingsController else { return}
		let seting = sc.setting
		
		switch seting.shouldZoom {
		case false:
			crab.run(moveAction)
		case true:
			let sequenceAction = SKAction.sequence([zoomAction, moveAction, unzoomAction])
			crab.run(sequenceAction)
		}
		
		if seting.shouldRoll {
			crab.run(rollAction)
		}
		
		
	}
}

extension CustomeScene: SettingsControllerProtocol {
}
