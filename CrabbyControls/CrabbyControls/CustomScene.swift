//
//  CustomScene.swift
//  CrabbyControls
//
//  Created by Michael Redig on 4/29/19.
//  Copyright © 2019 Michael Redig. All rights reserved.
//

import SpriteKit


class CustomScene: SKScene {
	let crab = SKSpriteNode()
	
	override func sceneDidLoad() {
		super.sceneDidLoad()
		addChild(crab)
		crab.loadTextures(named: "WaitingCrab", forKey: SKSpriteNode.textureKey)
		crab.position = Settings.lastTouch ?? CGPoint(x: frame.midX, y: frame.midY)
	}
	
	override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
		guard !touches.isEmpty, let touch = touches.first else { return }
		
		let position = touch.location(in: self)
		Settings.lastTouch = position
		
		let actionDuration = 1.0
		let moveAction = SKAction.move(to: position, duration: actionDuration)
		
		let rollAction = SKAction.rotate(byAngle: .pi * 2, duration: actionDuration)
		let zoomAction = SKAction.scale(by: 1.3, duration: actionDuration * 0.3)
		let unzoomAction = SKAction.scale(to: 1.0, duration: actionDuration * 0.1)
		
		let resumeWaiting = SKAction.customAction(withDuration: 0.01) { (node, value) in
			self.crab.loadTextures(named: "WaitingCrab", forKey: SKSpriteNode.textureKey)
		}
		
		crab.loadTextures(named: "HappyCrab", forKey: SKSpriteNode.textureKey)
		
		if Settings.shouldZoom {
			let zoomSeq = SKAction.sequence([zoomAction, moveAction, unzoomAction, resumeWaiting])
			crab.run(zoomSeq)
		} else {
			crab.run(SKAction.sequence([moveAction, resumeWaiting]))
		}
		
		if Settings.shouldRoll {
			crab.run(rollAction)
		}
		
	}
	
	
}
