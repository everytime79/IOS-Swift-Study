//
//  BackGround.swift
//  TetrisGame iOS
//
//  Created by 박성수 on 2020/09/20.
//

// 백그라운드
// 이차원 배열 생성

import Foundation
import SpriteKit
class BackGround{
    
    let row = Variables.row
    let col = Variables.col
    let brickSize = Variables.brickValue.brickSize
    let gab = Variables.gab
    let scene = Variables.scene
    
    init(){
        Variables.backarrays = Array(repeating: Array(repeating: 0, count: row), count: col)
        
        //        시작 포인트는 width 값에서 벽블럭의 값을 빼준 값에 나누기 2를 하게 되면 중간으로 이동한다.
        let xvalue = ((Int(scene.frame.width) - row * brickSize) + brickSize) / 2
        
        Variables.startPoint = CGPoint(x: xvalue, y: 100)
        bg()
    }
    //    벽 만들기
    
    //    [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
    //    [1, 0, 0, 0, 0, 0, 0, 0, 0, 1]
    //    [1, 0, 0, 1, 1, 1, 1, 0, 0, 1]
    //    [1, 0, 0, 0, 0, 0, 0, 0, 0, 1]
    //    [1, 0, 0, 0, 0, 0, 0, 0, 0, 1]
    //    [1, 0, 0, 0, 0, 0, 0, 0, 0, 1]
    //    [1, 0, 0, 0, 0, 0, 0, 0, 0, 1]
    //    [1, 0, 0, 0, 0, 0, 0, 0, 0, 1]
    //    [1, 0, 0, 0, 0, 0, 0, 0, 0, 1]
    //    [1, 0, 0, 0, 0, 0, 0, 0, 0, 1]
    //    [1, 0, 0, 0, 0, 0, 0, 0, 0, 1]
    //    [1, 0, 0, 0, 0, 0, 0, 0, 0, 1]
    //    [1, 0, 0, 0, 0, 0, 0, 0, 0, 1]
    //    [1, 0, 0, 0, 0, 0, 0, 0, 0, 1]
    //    [1, 0, 0, 0, 0, 0, 0, 0, 0, 1]
    //    [1, 0, 0, 0, 0, 0, 0, 0, 0, 1]
    //    [1, 0, 0, 0, 0, 0, 0, 0, 0, 1]
    //    [1, 0, 0, 0, 0, 0, 0, 0, 0, 1]
    //    [1, 0, 0, 0, 0, 0, 0, 0, 0, 1]
    //    [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
    //
    // 테두리 벽에 1을 생성한다.
    
    func bg(){
        let bg = SKSpriteNode()
        //게임 배경 색상
        bg.color = .link
        bg.size = Variables.scene.frame.size
        bg.position = CGPoint(x: 0, y: 0)
        bg.anchorPoint = CGPoint(x: 0, y: 1)
        //bg.lightingBitMask = 0b0001
        Variables.scene.addChild(bg)
        for i in 0..<row{
            Variables.backarrays[col-1][i] = 2 //외벽의 값은 2
            //Variables.scene.addChild(wall(x: i, y: col-1))
        }
        for i in 0..<col-1{
            Variables.backarrays[i][0] = 2
            //Variables.scene.addChild(wall(x: 0, y: i))
        }
        for i in 0..<col-1{
            Variables.backarrays[i][row-1] = 2
            //Variables.scene.addChild(wall(x: row-1, y: i))
        }
        for i in 0..<row{
            Variables.backarrays[0][i] = 2
            //Variables.scene.addChild(wall(x: i, y: 0))
        }
        lines()
    }
    
    func lines(){
        // 상, 하, 좌, 우 4포지션 값의 정의
        let leftX = Int(Variables.startPoint.x) + (Variables.brickValue.brickSize / 2)
        let rightX = Variables.brickValue.brickSize * (row - 2) + leftX
        let topY = Int(Variables.startPoint.y) - (Variables.brickValue.brickSize / 2)
        let bottomY = Variables.brickValue.brickSize * (col - 1) + topY
        
        let leftLine = SKSpriteNode()
        leftLine.color = .white
        leftLine.anchorPoint = CGPoint(x: 0.5, y: 1)
        leftLine.size = CGSize(width: 1, height: Variables.brickValue.brickSize * (col - 1))
        leftLine.position = CGPoint(x: leftX, y: -topY)
        Variables.scene.addChild(leftLine)
        
        let rightLine = SKSpriteNode()
        rightLine.color = .white
        rightLine.anchorPoint = CGPoint(x: 0.5, y: 1)
        rightLine.size = CGSize(width: 1, height: Variables.brickValue.brickSize * (col - 1))
        rightLine.position = CGPoint(x: rightX, y: -topY)
        Variables.scene.addChild(rightLine)
        
        let bottomLine = SKSpriteNode()
        bottomLine.color = .white
        bottomLine.anchorPoint = CGPoint(x: 0, y: 0.5)
        bottomLine.size = CGSize(width: rightX - leftX, height: 1)
        bottomLine.position = CGPoint(x: leftX, y: -bottomY)
        Variables.scene.addChild(bottomLine)
        
        let topLine = SKSpriteNode()
        topLine.color = .white
        topLine.anchorPoint = CGPoint(x: 0, y: 0.5)
        topLine.size = CGSize(width: rightX - leftX, height: 1)
        topLine.position = CGPoint(x: leftX, y: -topY)
        Variables.scene.addChild(topLine)
        
    }
    
  /*
    func wall(x : Int , y : Int) -> SKSpriteNode{
        let brick = SKSpriteNode()
        brick.size = CGSize(width: brickSize - gab, height: brickSize - gab)
        brick.color = .white
        brick.name = "wall"
        brick.zPosition = 1
        let xValue = x * brickSize + Int(Variables.startPoint.x)
        let yValue = y * brickSize + Int(Variables.startPoint.y)
        brick.position = CGPoint(x: xValue, y: -yValue)
        return brick
    }
 */
}
