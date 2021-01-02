//
//  GameMain.swift
//  TetrisGame iOS
//
//  Created by 박성수 on 2020/10/25.
//

import Foundation
import SpriteKit

class GameMain: SKScene{
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        let location = touch?.location(in: self)
        let node = nodes(at: location!)
        for item in node{
            if item.name == "gamestart"
            {
                let scene = GameScene(size: view!.frame.size)
                scene.scaleMode = .aspectFill
                scene.anchorPoint = CGPoint(x: 0, y: 1)
                let transition = SKTransition.moveIn(with: .right, duration: 1)
                view!.presentScene(scene , transition: transition)
            }
            
        }
    }
}
