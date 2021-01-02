//
//  GameOver.swift
//  TetrisGame iOS
//
//  Created by 박성수 on 2020/09/22.
//

// 게임이 종료 되었을 때 출력할 페이지

import Foundation
import SpriteKit

class GameOver : SKScene{
    
    var score = 0
    var bestScore = 0
    
    override func didMove(to view: SKView) {
        let scoreText = childNode(withName: "score") as! SKLabelNode
        scoreText.text = "Your Score : \(score) !"
        scoreText.color = SKColor.blue
        scoreText.colorBlendFactor = 1
        scoreText.fontName = "Helvetica-Bold"
        //scoreText.fontName = "Krungthep"

        let bestScoreText = childNode(withName: "bestScore") as! SKLabelNode
        bestScoreText.text = "High Score : \(bestScore) !"
        bestScoreText.color = SKColor.red
        bestScoreText.colorBlendFactor = 1
        //bestScoreText.fontName = "Krungthep"
        bestScoreText.fontName = "Helvetica-Bold"
       
    }
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        let location = touch?.location(in: self)
        let node = nodes(at: location!)
        for item in node{
            if item.name == "restart"
            {
                
                let scene = GameScene(size: view!.frame.size)
                scene.scaleMode = .aspectFill
                scene.anchorPoint = CGPoint(x: 0, y: 1)
                //scene.downButton?.bestScore = bestscore
                let transition = SKTransition.moveIn(with: .down, duration: 1)
                view!.presentScene(scene , transition: transition)
                print("touchesBegan : go to GameScene")
            }
            
//            if item.name == "gamemain"
//            {
//                let scene = GameMain(size: view!.frame.size)
//                scene.scaleMode = .aspectFill
//                scene.anchorPoint = CGPoint(x: 0, y: 1)
//                let transition = SKTransition.moveIn(with: .right, duration: 1)
//                view!.presentScene(scene , transition: transition)
//
//            }
            
            if item.name == "intro"{
                if let scene = Intro(fileNamed: "Intro"){
                    scene.scaleMode = .aspectFill
                    scene.anchorPoint = CGPoint(x: 0.5, y: 0.5)
                    let transition = SKTransition.moveIn(with: .up, duration: 1)
                    
                    view!.presentScene(scene, transition: transition)
                    print("touchesBegan : intro")
                }
            }
            
            
            if item.name == "gameinfo"{
                if let scene = GameInfo(fileNamed: "GameInfo"){
                    scene.scaleMode = .aspectFill
                    scene.anchorPoint = CGPoint(x: 0.5, y: 0.5)
                    let transition = SKTransition.moveIn(with: .up, duration: 1)
                    
                    view!.presentScene(scene, transition: transition)
                    print("touchesBegan : gameinfo")
                }
            }
        }
    }

}
