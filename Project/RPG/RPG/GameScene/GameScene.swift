//
//  GameScene.swift
//  RPG
//
//  Created by 박성수 on 2021/01/13.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
// Mark: - Variable
    let Player = SKSpriteNode(imageNamed: "RedSwan")
    
    let ControlBase = SKSpriteNode(imageNamed: "ControlBase")
    let ControlBall = SKSpriteNode(imageNamed: "ControlBall")
// Variable_End
    
    // didMove 화면이 보이자 마자 실행
    override func didMove(to view: SKView) {
        
        // Controller //
        ControlBase.position = CGPoint(x: -500, y: -200) // 위치 좌표
        ControlBase.zPosition = 100 // 레이어의 높이
        ControlBase.alpha = 0.5 // 투명도
        self.addChild(ControlBase)
        
        ControlBall.position = ControlBase.position
        ControlBall.zPosition = ControlBase.zPosition
        ControlBall.alpha = ControlBase.alpha
        self.addChild(ControlBall)
        
        // Player //
        Player.zPosition = 10
        self.addChild(Player)
    }

    
}
