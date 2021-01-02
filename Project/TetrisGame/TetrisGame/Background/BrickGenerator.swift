//
//  BrickGenerator.swift
//  TetrisGame iOS
//
//  Created by 박성수 on 2020/09/20.
//

// 브릭 생성

import Foundation
import SpriteKit
class BrickGenerator{
//    수정할 부분 1
//    let brickValue = Variables.brickValue
        init(){
            Variables.dx = 4
            Variables.dy = 2
//            수정할 부분 2
//            Variables.brickValue = Brick().bricks()
            
            
//            추가할 부분 1
            //let brickValue = Brick().bricks()
            //Variables.brickValue = brickValue
            
            // 07 13:10 수정  
            Variables.brickValue = Variables.newBrickArrays[0]
            let brickValue = Variables.brickValue
            
            let brick = brickValue.points
            Variables.brickArrays = brick
            Variables.brickNode.removeAll()

        for item in brick{
            let x = Int(item.x) + Variables.dx
            let y = Int(item.y) + Variables.dy
            Variables.backarrays[y][x] = 1
            // 블럭의 각각의 포인트 값이 시작포인트 dx,dy 와 더해져 블럭의 현재 위치가 된다.
            
            let xValue = x * brickValue.brickSize + Int(Variables.startPoint.x)
            let yValue = y * brickValue.brickSize + Int(Variables.startPoint.y)
            let brick = SKSpriteNode()
            brick.color = brickValue.color
            // brick의 이미지 삽입
            brick.texture =  SKTexture(imageNamed: brickValue.brickName)
                        
            brick.size = CGSize(width: brickValue.brickSize - Variables.gab,
                                height: brickValue.brickSize - Variables.gab)
            brick.setScale(2.7)
            //조명 효과 
            brick.lightingBitMask = 0b0001
            // 조명 확인을 위한 그림자
            //brick.shadowCastBitMask = 0b001
            brick.name = brickValue.brickName
            brick.zPosition = brickValue.zPosition
            brick.position = CGPoint(x: xValue, y: -yValue)
            Variables.scene.addChild(brick)
            Variables.brickNode.append(brick)
            
            
        }
    }
}
