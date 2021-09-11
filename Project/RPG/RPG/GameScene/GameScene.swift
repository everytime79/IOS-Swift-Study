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
    
    var Player = Character()
    var PlayerMinion = Character() // MiniMap Player
    
    var MonsterGroup = [Character]()
    var Monster = Character()
    var MonsterMinionGroup = [Character]()
    var MonsterMinion = Character() // MiniMap Monster
    
    var MiniMap = SKSpriteNode()
    
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
        LocalCamera.addChild(ControlBase)
        
        ControlBall.position = ControlBase.position
        ControlBall.zPosition = ControlBase.zPosition
        ControlBall.alpha = 0.8
        // ControlBall.alpha = ControlBase.alpha
        LocalCamera.addChild(ControlBall)
        
        // AttackButton //
        AttackButtonBase.position = CGPoint(x: 500, y: -200)
        AttackButtonBase.zPosition = 99
        AttackButtonBase.alpha = 0.4
        LocalCamera.addChild(AttackButtonBase)
        
        AttackButton.position = AttackButtonBase.position
        AttackButton.zPosition = 100
        AttackButton.alpha = 1
        LocalCamera.addChild(AttackButton)
        
        // ItemButton //
        ItemButtonBase.position = CGPoint(x: 350, y: -200)
        ItemButtonBase.zPosition = 99
        ItemButtonBase.alpha = 0.4
        LocalCamera.addChild(ItemButtonBase)
        
        ItemButton.position = ItemButtonBase.position
        ItemButton.zPosition = 100
        ItemButton.alpha = 1
        LocalCamera.addChild(ItemButton)
        
        // SkillButton //
        
        SkillButtonBase.position = CGPoint(x: 500, y: -50)
        SkillButtonBase.zPosition = 99
        SkillButtonBase.alpha = 0.4
        LocalCamera.addChild(SkillButtonBase)
        
        SkillButton.position = SkillButtonBase.position
        SkillButton.zPosition = 100
        SkillButton.alpha = 1
        LocalCamera.addChild(SkillButton)

        // Mini Map
        MiniMap = SKSpriteNode(color: UIColor.black, size: CGSize(width: 200, height: 200))
        MiniMap.alpha = 0.6 // 불투명도
        MiniMap.zPosition = 99
        //MiniMap.position = CGPoint(x: (MiniMap.size.width / 2) - (view.frame.width) + 10, y: (view.frame.height) - (MiniMap.size.height / 2) - 10)
        MiniMap.position = CGPoint(x: -500, y: 200)
    
        LocalCamera.addChild(MiniMap)
        
        
        // Data //
        let Path = Bundle.main.path(forResource: "GameData", ofType: "plist")
        GameData = NSMutableDictionary(contentsOfFile: Path!)!
        Data_Player()
        Data_Monster()
        
    }
    
}
