//
//  CustomScene.swift
//  Contained
//
//  Created by Jeffrey Santana on 7/22/19.
//  Copyright © 2019 Jefffrey Santana. All rights reserved.
//

import SpriteKit

class CustomScene: SKScene {
	let crab = SKSpriteNode()
	
	// Add and center child, initializing animation sequence
	override func sceneDidLoad() {
		super.sceneDidLoad()
		addChild(crab)
//		crab.texture = SKTexture(imageNamed: "HappyCrab")
		crab.loadTextures(named: "HappyCrab", forKey: SKSpriteNode.textureKey)
		crab.position = CGPoint(x: frame.midX, y: frame.midY)
	}
	
	// Move to touch
	public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
		
		// Fetch a touch or leave
		guard !touches.isEmpty, let touch = touches.first else { return }
		
		// Retrieve position
		let position = touch.location(in: self)
		
		// Create move action
		let actionDuration = Settings.shared.nodeSpeed
		let moveAction = SKAction.move(to: position, duration: actionDuration)
		
		let rollAction = SKAction.rotate(byAngle: CGFloat.pi * 2, duration: actionDuration)
		let zoomAction = SKAction.scale(by: 1.3, duration: 0.3)
		let unzoomAction = SKAction.scale(to: 1.0, duration: 0.1)
		
		if Settings.shared.isZooming {
			let actionSequence = SKAction.sequence([zoomAction, moveAction, unzoomAction])
			crab.run(actionSequence)
		} else {
			crab.run(moveAction)
		}
		
		if Settings.shared.isRolling {
			crab.run(rollAction)
		}
	}
}
