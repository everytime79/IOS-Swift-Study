//
//  GameScene.swift
//  RPG
//
//  Created by 박성수 on 2021/01/13.
//
import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
// MARK: - Variable
    var GameData = NSMutableDictionary()//변경이 될 수 있는 dic
    
    let Player = Character(imageNamed: "RedSwan")
    
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
        
        Scene = self
        
        // Local Camera //
        self.camera = LocalCamera
        self.addChild(LocalCamera)
        
        // Controller //
        ControlBase.position = CGPoint(x: -500, y: -200) // 위치 좌표
        ControlBase.zPosition = 100 // 레이어의 높이
        ControlBase.alpha = 0.4 // 투명도
        self.addChild(ControlBase)
        
        ControlBall.position = ControlBase.position
        ControlBall.zPosition = ControlBase.zPosition
        ControlBall.alpha = 0.8
        // ControlBall.alpha = ControlBase.alpha
        self.addChild(ControlBall)
        
        // AttackButton //
        AttackButtonBase.position = CGPoint(x: 500, y: -200)
        AttackButtonBase.zPosition = 99
        AttackButtonBase.alpha = 0.4
        self.addChild(AttackButtonBase)
        
        AttackButton.position = AttackButtonBase.position
        AttackButton.zPosition = 100
        AttackButton.alpha = 1
        self.addChild(AttackButton)
        
        // ItemButton //
        ItemButtonBase.position = CGPoint(x: 350, y: -200)
        ItemButtonBase.zPosition = 99
        ItemButtonBase.alpha = 0.4
        self.addChild(ItemButtonBase)
        
        ItemButton.position = ItemButtonBase.position
        ItemButton.zPosition = 100
        ItemButton.alpha = 1
        self.addChild(ItemButton)
        
        // SkillButton //
        
        SkillButtonBase.position = CGPoint(x: 500, y: -50)
        SkillButtonBase.zPosition = 99
        SkillButtonBase.alpha = 0.4
        self.addChild(SkillButtonBase)
        
        SkillButton.position = SkillButtonBase.position
        SkillButton.zPosition = 100
        SkillButton.alpha = 1
        self.addChild(SkillButton)

        // Data //
        let Path = Bundle.main.path(forResource: "GameData", ofType: "plist")
        GameData = NSMutableDictionary(contentsOfFile: Path)!
        // Player //
        Player.zPosition = 10
        self.addChild(Player)
    }

    
}
