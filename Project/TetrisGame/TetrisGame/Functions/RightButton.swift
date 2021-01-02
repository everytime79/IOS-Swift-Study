//
//  RightButton.swift
//  TetrisGame iOS
//
//  Created by 박성수 on 2020/09/22.
//

// 오른쪽 버튼 기능 구현

import Foundation
import SpriteKit

class RightButton {
    
    
    //버튼의 형태
    let btn = SKSpriteNode()
    init(){
        btn.texture = SKTexture(imageNamed: "right_btn1")
        btn.size = CGSize(width: 50, height: 50)
        btn.name = "right"
        btn.zPosition = 1
        let point1 = Int(Variables.scene.frame.width) / 2
        let point2 = -50
        let xValue = (point1 - point2) / 2
        btn.position = CGPoint(x: xValue , y: -Int(Variables.scene.frame.height) + 50)
        Variables.scene.addChild(btn)
    }
    //    우측 버튼에 대한 애니메이션
    func anim(){
        var textures = Array<SKTexture>()
        for i in 1...15{
            let name = "right_btn\(i)"
            let texture = SKTexture(imageNamed: name)
            textures.append(texture)
        }
        let action = SKAction.animate(with: textures, timePerFrame: 0.03)
        btn.run(action)
    }
    
    
    
    
    //    블럭이 이동 가능할 경우 오른쪽으로 이동 구현
    func brickMoveRight(){
        if isMovable(){
            Variables.dx += 1
            var action = SKAction()
            for (i , item) in Variables.brickArrays.enumerated(){
                let x = Int(item.x) + Variables.dx
                let y = Int(item.y) + Variables.dy
                Variables.backarrays[y][x - 1] -= 1
                Variables.backarrays[y][x] += 1
                action = SKAction.moveBy(x: CGFloat(Variables.brickValue.brickSize), y: 0, duration: 0.1)
                Variables.brickNode[i].run(action)
            }
            //            for item in Variables.backarrays{
            //                print(item) // <- 0과 1로 표시, 이동 확인
            //            }
            anim()
            print("Right Button") //눌리고 있는지 테스트
        }
    }
    
    func isMovable() -> Bool{
        for item in Variables.brickArrays{
            let x = Int(item.x) + Variables.dx
            let y = Int(item.y) + Variables.dy
            if Variables.backarrays[y][x + 1] == 2{
                return false
            }
        }
        return true
    }
}
