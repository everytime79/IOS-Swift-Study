//
//  GameScene.swift
//  RPG
//
//  Created by 박성수 on 2021/01/13.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    let Player = SKSpriteNode(imageNamed: "RedSwan")
    
    override func didMove(to view: SKView) {
        
        self.addChild(Player)
    }

    
}
