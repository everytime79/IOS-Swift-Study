//
//  Brick.swift
//  TetrisGame iOS
//
//  Created by 박성수 on 2020/09/20.
//

// 7종 벽돌

import Foundation
import SpriteKit

class Brick{
    
    struct Bricks {
        var color = UIColor()
        var points = Array<CGPoint>()
        var brickSize = Int()
        let zPosition = CGFloat(1)
        var brickName = String()
        
    }
    
    func bricks() -> Bricks{
        var bricks = [Bricks]()
        
        let value = Variables.scene.frame.width
        var size = 0
        switch value {
        case 375:
            size = 25
            break
        case 414:
            size = 30
            break
        default:
            size = 30
        }
        
        //        첫번째 브릭의 형태 ㅗ 모양
        var brick1 = [CGPoint]()
        brick1.append(CGPoint(x: 0, y: 0))
        brick1.append(CGPoint(x: 1, y: 0))
        brick1.append(CGPoint(x: -1, y: 0))
        brick1.append(CGPoint(x: 0, y: 1))
        bricks.append(Bricks(color: .red, points: brick1, brickSize: size ,brickName: "brick1"))
        
        
        //          ㅡ 형태의 모양
        var brick2 = [CGPoint]()
        brick2.append(CGPoint(x: -1, y: 0))  //   이 블럭의 위치를 x는 -1 y는 0으로 가정한다.
        brick2.append(CGPoint(x: 0, y: 0))
        brick2.append(CGPoint(x: 1, y: 0))
        brick2.append(CGPoint(x: 2, y: 0))
        bricks.append(Bricks(color: .cyan, points: brick2, brickSize: size ,brickName: "brick2"))
        
        var brick3 = [CGPoint]()
        brick3.append(CGPoint(x: 0, y: 0))
        brick3.append(CGPoint(x: 1, y: 0))
        brick3.append(CGPoint(x: 0, y: 1))
        brick3.append(CGPoint(x: -1, y: 1))
        bricks.append(Bricks(color: .green, points: brick3, brickSize: size ,brickName: "brick3"))
        
        
        //        ㄱ 반대 모양
        var brick4 = [CGPoint]()
        brick4.append(CGPoint(x: -1, y: 1))
        brick4.append(CGPoint(x: -1, y: 0))
        brick4.append(CGPoint(x: 0, y: 0))
        brick4.append(CGPoint(x: 1, y: 0))
        bricks.append(Bricks(color: .purple, points: brick4, brickSize: size ,brickName: "brick4"))
        
        var brick5 = [CGPoint]()
        brick5.append(CGPoint(x: 1, y: 0))
        brick5.append(CGPoint(x: 0, y: 0))
        brick5.append(CGPoint(x: 0, y: 1))
        brick5.append(CGPoint(x: 1, y: 1))
        bricks.append(Bricks(color: .orange, points: brick5, brickSize: size , brickName: "brick5"))
        
        var brick6 = [CGPoint]()
        brick6.append(CGPoint(x: 1, y: 1))
        brick6.append(CGPoint(x: -1, y: 0))
        brick6.append(CGPoint(x: 0, y: 0))
        brick6.append(CGPoint(x: 1, y: 0))
        bricks.append(Bricks(color: .yellow, points: brick6, brickSize: size ,brickName: "brick6"))
        
        var brick7 = [CGPoint]()
        brick7.append(CGPoint(x: 0, y: 0))
        brick7.append(CGPoint(x: -1, y: 0))
        brick7.append(CGPoint(x: 0, y: 1))
        brick7.append(CGPoint(x: 1, y: 1))
        bricks.append(Bricks(color: .systemPink, points: brick7, brickSize: size ,brickName: "brick7"))
        
        let random = Int.random(in: 0..<7) //랜덤으로 출력할 것이다. 0부터 7까지
        return bricks[random] //랜넘으로 넣어준다.
        /*
         0번 = ㅗ자 모양
         1번 = 일자형
         2번 = 좌 아래 -> 우 위로 지그재그
         3번 = ㄱ자 반대로
         4번 = 정사각형
         5번 = ㄱ자
         6번 = 좌 위에서 -> 우 아래로 지그재그
         */
        
    }
}
