//
//  StopButton.swift
//  TetrisGame iOS
//
//  Created by 박성수 on 2020/09/23.
//

// 스탑 버튼 기능 구현

import Foundation
import SpriteKit

class StopButton{
    let btn = SKSpriteNode()
    init() {
        btn.texture = SKTexture(imageNamed: "stop_btn1")
        btn.size = CGSize(width: 50, height: 50)
        btn.name = "stop"
//        let point1 = Int(Variables.scene.frame.width) / 2
//        let point2 = Int(Variables.scene.frame.width) - 50
//        let xValue = point1 + (point2 - point1) / 2
        btn.position = CGPoint(x: Int(Variables.scene.frame.width) / 2 , y: -Int(Variables.scene.frame.height) + 50)
        Variables.scene.addChild(btn)
    }
    
    //    버튼 애니메이션 구현
    func anim(){
        var textures = Array<SKTexture>()
        for i in 1...15{
            let name = "stop_btn\(i)"
            let texture = SKTexture(imageNamed: name)
            textures.append(texture)
        }
        let action = SKAction.animate(with: textures, timePerFrame: 0.03)
        btn.run(action)
    }
    
    func animBack(){
        var textures = Array<SKTexture>()
        for i in stride(from: 15, through: 1, by: -1){
            let name = "stop_btn\(i)"
            let texture = SKTexture(imageNamed: name)
            textures.append(texture)
        }
        let action = SKAction.animate(with: textures, timePerFrame: 0.03)
        btn.run(action)
    }
    
    
    func brickStop() {
        if Variables.isPause{
            animBack()
            Variables.isPause = false
        }else{
            anim()
            Variables.isPause = true
        }
    }
}
