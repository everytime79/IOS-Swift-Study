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
    
    let AttackButtonBase = SKSpriteNode(imageNamed: "ButtonBase")
    let AttackButton = SKSpriteNode(imageNamed: "AttackButton")
    
    let ItemButtonBase = SKSpriteNode(imageNamed: "ButtonBase")
    let ItemButton = SKSpriteNode(imageNamed: "ItemButton")
    
    let SkillButtonBase = SKSpriteNode(imageNamed: "ButtonBase")
    let SkillButton = SKSpriteNode(imageNamed: "SkillButton")
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
        
        // AttackButton //
        AttackButtonBase.position = CGPoint(x: 500, y: -200)
        AttackButtonBase.zPosition = 99
        AttackButtonBase.alpha = 0.5
        self.addChild(AttackButtonBase)
        
        AttackButton.position = AttackButtonBase.position
        AttackButton.zPosition = 100
        AttackButton.alpha = 0.5
        self.addChild(AttackButton)
        
        // ItemButton //
        ItemButtonBase.position = CGPoint(x: 350, y: -200)
        ItemButtonBase.zPosition = 99
        ItemButtonBase.alpha = 0.5
        self.addChild(ItemButtonBase)
        
        ItemButton.position = ItemButtonBase.position
        ItemButton.zPosition = 100
        ItemButton.alpha = 0.5
        self.addChild(ItemButton)
        
        // SkillButton //
        
        SkillButtonBase.position = CGPoint(x: 425, y: -100)
        SkillButtonBase.zPosition = 99
        SkillButtonBase.alpha = 0.5
        self.addChild(SkillButtonBase)
        
        SkillButton.position = SkillButtonBase.position
        SkillButton.zPosition = 100
        SkillButton.alpha = 0.5
        self.addChild(SkillButton)

        
        // Player //
        Player.zPosition = 10
        self.addChild(Player)
    }

    
}
