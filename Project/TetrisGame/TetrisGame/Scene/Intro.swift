//
//  Intro.swift
//  TetrisGame iOS
//
//  Created by 박성수 on 2020/10/28.
//

// 시작 화면

import Foundation
import SpriteKit

var sounds : Sounds?

class Intro : SKScene{
    
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        let scene = GameScene(size: view!.frame.size)
//        // set the scale mode to scale to fit the window
//        scene.scaleMode = .aspectFill
//        scene.anchorPoint = CGPoint(x: 0, y: 1)
//        let transition = SKTransition.moveIn(with: .down, duration: 1)
//        // Present the scene
//        view!.presentScene(scene , transition: transition)
//    }
//
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        let location = touch?.location(in: self)
        let node = nodes(at: location!)
        for item in node{
            if item.name == "start"
            {
                
                let scene = GameScene(size: view!.frame.size)
                scene.scaleMode = .aspectFill
                scene.anchorPoint = CGPoint(x: 0, y: 1)
                let transition = SKTransition.moveIn(with: .down, duration: 1)
                view!.presentScene(scene , transition: transition)
                print("touchesBegan : start")

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
            //    터치 이벤트 처리
            
//            if item.name == "intro"{
//                if let scene = Intro(fileNamed: "Intro"){
//                    scene.scaleMode = .aspectFill
//                    scene.anchorPoint = CGPoint(x: 0.5, y: 0.5)
//                    let transition = SKTransition.moveIn(with: .up, duration: 1)
//                    
//                    view!.presentScene(scene, transition: transition)
//                }
//            }
        }
    }
}
