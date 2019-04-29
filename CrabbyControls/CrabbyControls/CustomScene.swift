//
//  CustomScene.swift
//  CrabbyControls
//
//  Created by Michael Redig on 4/29/19.
//  Copyright © 2019 Michael Redig. All rights reserved.
//

import SpriteKit


class CustomScene: SKScene, SettingsProtocol {
	var settings: Settings? {
		didSet {
			setupScene()
		}
	}
	let crab = SKSpriteNode()
	
	var heartAttacking = false
	
	override func sceneDidLoad() {
		super.sceneDidLoad()
		addChild(crab)
		crab.loadTextures(named: "WaitingCrab", forKey: SKSpriteNode.textureKey)
		setupScene()
	}
	
	func setupScene() {
		crab.position = settings?.lastTouch ?? CGPoint(x: frame.midX, y: frame.midY)
	}
	
	override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
		guard !touches.isEmpty, let touch = touches.first else { return }
		
		guard !heartAttacking else { return }
		
		let position = touch.location(in: self)
		settings?.lastTouch = position
		let actionDuration = 1.0

		
		guard let settings = settings else { print("Settings not set up!"); return }
		if settings.heartAttackMode {
			heartAttacking = true
			
			let moveAction = SKAction.move(to: position, duration: actionDuration)
			
			let scaleAction = SKAction.scale(to: 0.1, duration: actionDuration * 2)
			let waitAction = SKAction.wait(forDuration: actionDuration * 3)
			let disappearAction = SKAction.scale(to: 0, duration: actionDuration * 0.07)
			let waitAgainAction = SKAction.wait(forDuration: actionDuration * 0.3)
			let scareAction = SKAction.customAction(withDuration: 0.01) { [weak self] (node, value) in
				guard let self = self else {print("no self"); return }
				let scareSprite = SKSpriteNode(imageNamed: "scaryCrab")
				scareSprite.position = CGPoint(x: self.frame.midX, y: self.frame.midY)
				scareSprite.zPosition = 1
				scareSprite.setScale(0)
				self.addChild(scareSprite)
				
				let wiggle = SKAction.sequence([SKAction.rotate(toAngle: 3 * (.pi / 180), duration: 0.1), SKAction.rotate(toAngle: -3 * (.pi / 180), duration: 0.1), ])
				let wiggleForever = SKAction.repeatForever(wiggle)
				let zoom = SKAction.scale(to: 1.0, duration: 0.05)
				let scareNoise = SKAction.playSoundFileNamed("scream.mp3", waitForCompletion: false)
				let scareGroup = SKAction.group([wiggleForever, zoom, scareNoise])
				scareSprite.run(scareGroup)
				let resetScene = SKAction.customAction(withDuration: 0.01, actionBlock: { [weak self] (node, value) in
					self?.crab.setScale(1)
					self?.heartAttacking = false
				})
				let removeScare = SKAction.sequence([SKAction.wait(forDuration: 5), SKAction.removeFromParent(), resetScene])
				scareSprite.run(removeScare)
			}
			
			let moveSeq = SKAction.sequence([SKAction.group([moveAction, scaleAction]), waitAction, disappearAction, waitAgainAction, scareAction])
			crab.run(moveSeq)
			
			
			
			
			
		} else {
			//regular mode
			let moveAction = SKAction.move(to: position, duration: actionDuration)
			
			let rollAction = SKAction.rotate(byAngle: .pi * 2, duration: actionDuration)
			let zoomAction = SKAction.scale(by: 1.3, duration: actionDuration * 0.3)
			let unzoomAction = SKAction.scale(to: 1.0, duration: actionDuration * 0.1)
			
			let resumeWaiting = SKAction.customAction(withDuration: 0.01) { (node, value) in
				self.crab.loadTextures(named: "WaitingCrab", forKey: SKSpriteNode.textureKey)
			}
			
			crab.loadTextures(named: "HappyCrab", forKey: SKSpriteNode.textureKey)
			
			if settings.shouldZoom {
				let zoomSeq = SKAction.sequence([zoomAction, moveAction, unzoomAction, resumeWaiting])
				crab.run(zoomSeq)
			} else {
				crab.run(SKAction.sequence([moveAction, resumeWaiting]))
			}
			
			if settings.shouldRoll {
				crab.run(rollAction)
			}
		}
	}
}
