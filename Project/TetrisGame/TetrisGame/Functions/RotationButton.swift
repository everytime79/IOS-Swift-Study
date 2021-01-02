//
//  RotationButton.swift
//  TetrisGame iOS
//
//  Created by 박성수 on 2020/09/22.
//

// 회전 버튼 기능 구현

import Foundation
import SpriteKit

class RotationButton {
    let btn = SKSpriteNode()
    init(){
        btn.texture = SKTexture(imageNamed: "rotation_btn1")
        btn.size = CGSize(width: 50, height: 50)
        btn.name = "rotation"
        btn.zPosition = 1
        
        btn.position = CGPoint(x: Int(Variables.scene.frame.width) - 50, y: -Int(Variables.scene.frame.height) + 50)


        Variables.scene.addChild(btn)
    }
    func anim(){
        var textures = Array<SKTexture>()
        for i in 1...15{
            let name = "rotation_btn\(i)"
            let texture = SKTexture(imageNamed: name)
            textures.append(texture)
        }
        let action = SKAction.animate(with: textures, timePerFrame: 0.03)
        btn.run(action)
    }
    
    
    func brickRotation(){
        if isRotatable(){
            let sinX = CGFloat(1)
            let cosX = CGFloat(0)
            var rotatedBrick = Array<CGPoint>()
            var action = SKAction()
            for (i, item) in Variables.brickArrays.enumerated(){ //변경되기 전의 brick , enumerated -> 번호를 생성하기 위한
                let r = item.y
                let c = item.x
                let currentX = Int(item.x) + Variables.dx
                let currentY = Int(item.y) + Variables.dy
                //                현재 블럭 위치에 해당하는 배열값을 0으로 변경
                Variables.backarrays[currentY][currentX] -= 1
                //                블럭의 회전은 삼각함수의 공식이 적용된다.
                let newBrickX = (c * cosX) - (r * sinX)
                let newBrickY = (c * sinX) + (r * cosX)
                //                변화된 값을 집어넣는다.
                rotatedBrick.append(CGPoint(x: newBrickX, y: newBrickY))
                //                그리고 이 값을 변경하도록 한다.
                let newX = Int(newBrickX) + Variables.dx
                let newY = Int(newBrickY) + Variables.dy
                Variables.backarrays[newY][newX] += 1
                
                let xValue = Int(newX) * Variables.brickValue.brickSize + Int(Variables.startPoint.x)
                let yValue = Int(newY) * Variables.brickValue.brickSize + Int(Variables.startPoint.y)
                action = SKAction.move(to: CGPoint(x: xValue, y: -yValue), duration: 0.01) /* yValue 에는 마이너스 값 => -yValue, duration은 회전 시간 */
                Variables.brickNode[i].run(action)
                print("Rotation Button")
            }
            Variables.brickArrays = rotatedBrick //  변경
        }
        anim()
        
        //        0과 1로 표현
        for item in Variables.backarrays{
            //print(item)
        }
    }
    
    func isRotatable() -> Bool{
        
        //        brick 5 정사각형 모양은 기준점을 잡고 움직이면 움직임이 이상하기 때문에 예외처리한다.
        if Variables.brickValue.brickName == "brick5"{
            print("정사각형은 돌리지 못합니다.")
            return false
        }
        
        
        let sinX = CGFloat(1)
        let cosX = CGFloat(0)
        for item in Variables.brickArrays{
            if item.x != 0 || item.y != 0{ // 원점 제외  x,y 이 둘다 0인 부분 외에 3개 부분만 비교한다. 원점 이외의 것들을 돌렸을 때 
                let r = item.y
                let c = item.x
                let x = Int((c * cosX) - (r * sinX)) + Variables.dx
                let y = Int((c * sinX) - (r * cosX)) + Variables.dy
                //            print(Variables.backarrays[y][x]) //체크
                //            돌렸을 때의 값이 0이 아니면 return 하지 말것.
                if Variables.backarrays[y][x] == 2{
                    return false
                }
            }
            
        }
        return true
    }
}


