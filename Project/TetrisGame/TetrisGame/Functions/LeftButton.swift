//  LeftButton.swift
//  TetrisGame iOS
//
//  Created by 박성수 on 2020/09/21.
//

// 왼쪽 버튼 기능 구현

import Foundation
import SpriteKit

class LeftButton{
    let btn = SKSpriteNode()
    init(){
        btn.texture = SKTexture(imageNamed: "left_btn1")
        btn.size = CGSize(width: 50, height: 50)
        btn.name = "left"
        btn.position = CGPoint(x: 50, y: -Int(Variables.scene.frame.height) + 50)
        Variables.scene.addChild(btn)
    }
    
    //    버튼 애니메이션 구현
    func anim(){
        var textures = Array<SKTexture>()
        for i in 1...15{
            let name = "left_btn\(i)"
            let texture = SKTexture(imageNamed: name)
            textures.append(texture)
        }
        let action = SKAction.animate(with: textures, timePerFrame: 0.03)
        btn.run(action)
    }
    
    //    함수 셋팅
    func brickMoveLeft(){
        //        만약 이동이 가능하다면,
        if isMovale(){
            Variables.dx -= 1
            var action = SKAction()
            for (i, item) in Variables.brickArrays.enumerated(){
                let x = Int(item.x) + Variables.dx
                let y = Int(item.y) + Variables.dy
                
                Variables.backarrays[y][x + 1] -= 1
                Variables.backarrays[y][x] += 1
                
                action = SKAction.moveBy(x: -CGFloat(Variables.brickValue.brickSize), y: 0, duration: 0.1)
                Variables.brickNode[i].run(action)
                
                //                for item in Variables.backarrays{
                //                    print(item)
                //                }
            }
            
            anim()
            print("Left Button")
            
        }
    }
    
    
    func isMovale() ->Bool{
        //        블럭의 좌측 포인트를 찾고, 좌측 포인트의 왼쪽값이 2인지 체크, 2의 공간은 벽이기 때문.
        for item in Variables.brickArrays{
            let x = Int(item.x) + Variables.dx
            let y = Int(item.y) + Variables.dy
            if Variables.backarrays[y][x - 1] == 2{
                return false
            }
        }
        return true
    }
}
