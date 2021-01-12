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
    
    var TouchPoint = CGPoint()
    
    // didMove 화면이 보이자 마자 실행
    override func didMove(to view: SKView) {
        
        self.addChild(Player)
    }

    
}
