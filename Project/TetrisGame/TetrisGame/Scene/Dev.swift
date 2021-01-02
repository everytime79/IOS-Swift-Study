//
//  dev.swift
//  TetrisGame iOS
//
//  Created by 박성수 on 2020/10/29.
//

import Foundation
import SpriteKit

class Dev : SKScene{
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        let location = touch?.location(in: self)
        let node = nodes(at: location!)
        for item in node{
            if item.name == "restart"
            {
                let scene = Intro(size: view!.frame.size)
                scene.scaleMode = .aspectFill
                scene.anchorPoint = CGPoint(x: 0, y: 1)
                let transition = SKTransition.moveIn(with: .up, duration: 1)
                view!.presentScene(scene , transition: transition)
                print("touchesBegan : go to Intro")
            }
            
  
        }
        
}
}
