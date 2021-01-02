//
//  GameInfo.swift
//  TetrisGame iOS
//
//  Created by 박성수 on 2020/10/31.
//

// 이미지 등 저작권 표기

import Foundation
import SpriteKit


class GameInfo : SKScene{
    

    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        let location = touch?.location(in: self)
        let node = nodes(at: location!)
        for item in node{
            if item.name == "return"
            {
                if let scene = Intro(fileNamed: "Intro"){
                    scene.scaleMode = .aspectFill
                    scene.anchorPoint = CGPoint(x: 0.5, y: 0.5)
                    let transition = SKTransition.moveIn(with: .down, duration: 1)
                    
                    view!.presentScene(scene, transition: transition)
                    print("touchesBegan : intro")                }
            }
        }
        }
}
