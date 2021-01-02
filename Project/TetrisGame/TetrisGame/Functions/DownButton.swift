//
//  DownButton.swift
//  TetrisGame iOS
//
//  Created by 박성수 on 2020/09/22.
//

// 다운 버튼 기능 구현

import Foundation
import SpriteKit



class DownButton {
    var gamescene : GameScene?

    
    let btn = SKSpriteNode()
    // 최종 점수
    var totalScore = 0
    var point = 100
    //var bestScore = 0
    
    init(){
        btn.texture = SKTexture(imageNamed: "down_btn1")
        btn.size = CGSize(width: 50, height: 50)
        btn.name = "down"
        btn.zPosition = 1

        let point1 = Int(Variables.scene.frame.width) / 2
        let point2 = Int(Variables.scene.frame.width) - 50
        let xValue = point1 + (point2 - point1) / 2
        btn.position = CGPoint(x: xValue, y: -Int(Variables.scene.frame.height) + 50)
        Variables.scene.addChild(btn)
    }
    func anim(){
        var textures = Array<SKTexture>()
        for i in 1...15{
            let name = "down_btn\(i)"
            let texture = SKTexture(imageNamed: name)
            textures.append(texture)
        }
        let action = SKAction.animate(with: textures, timePerFrame: 0.03)
        btn.run(action)
    }
    
    
    //    블럭을 내릴지 말지
    func brickDwon(){
        if isbrickDownable(){
            possibleDown()
            //print("Down Button")
        }else{
            impossibleDown()
        }
    }
    
    
    //    블럭이 아래로 내려갈 수 있을 때
    func possibleDown(){
        Variables.dy += 1
        var action = SKAction()
        for (i, item) in Variables.brickArrays.enumerated(){
            let x = Int(item.x) + Variables.dx
            let y = Int(item.y) + Variables.dy
            
            Variables.backarrays[y - 1][x] -= 1
            Variables.backarrays[y][x] += 1
            
            action = SKAction.moveBy(x: 0, y: -CGFloat(Variables.brickValue.brickSize), duration: 0.1)
            Variables.brickNode[i].run(action)
            
            
        }
    }
    
    //    블럭이 아래로 내려갈 수 없을 때
    //    블럭이 아래로 내려갈 수 없을 때 해당 블럭의 위치 값을 2로 변경 후, 새로운 블럭을 재생성한다. 현재 블럭 삭제 -> 새 SKNode 생성
    func impossibleDown(){
        //        값을 2로 변경
        for item in Variables.brickArrays{
            let x = Int(item.x) + Variables.dx
            let y = Int(item.y) + Variables.dy
            Variables.backarrays[y][x] = 2
            //            새로운 블럭 생성
            let blocked = SKSpriteNode()
            blocked.color = .gray
            blocked.size = CGSize(width: Variables.brickValue.brickSize - Variables.gab, height: Variables.brickValue.brickSize - Variables.gab)
            blocked.name = "blocked"
            let xValue = x * Variables.brickValue.brickSize + Int(Variables.startPoint.x)
            let yValue = y * Variables.brickValue.brickSize + Int(Variables.startPoint.y)
            blocked.position = CGPoint(x: xValue, y: -yValue)
            Variables.scene.addChild(blocked)
            Variables.blockedArrays.append(blocked)
        }
        //        기존 블럭을 삭제한다.
        for item in Variables.brickNode{
            item.removeFromParent()
        }
        //        data 체크
        for item in Variables.backarrays{
            //print(item)
        }
        checkDelete()
    }
    func checkDelete(){
        //        블럭에서 중복된 y 값을 제거
        var set = Set<Int>()
        for item in Variables.brickArrays{
            let y = Int(item.y) + Variables.dy
            set.insert(y)
        }
        //        가져온 y 값으로 행 체크
        for y in set.sorted(){
            let yValue = y * Variables.brickValue.brickSize + Int(Variables.startPoint.y)
            //            체크한 행이 0이 포함되어 있지 않으면, 실행.
            if !Variables.backarrays[y].contains(0){
                Variables.backarrays.remove(at: y)

                
                //매 줄이 삭제될 때 마다, 점수를 100점씩 합산

                totalScore += point

                var rowArray = Array<Int>()
                for i in 0..<Variables.row{
                    rowArray.append(0)
                }
                rowArray[rowArray.startIndex] = 2
                rowArray[rowArray.endIndex - 1] = 2
                Variables.backarrays.insert(rowArray, at: 1)
                print("한줄 삭제")
                print(rowArray)
                
                //                삭제 효과음
                Variables.blockedArrays.first?.run(SKAction.playSoundFileNamed("delete.wav", waitForCompletion: false))
                //                삭제 효과 emitter
                fire(position: CGPoint(x: Int(Variables.scene.frame.width) / 2, y: -yValue))
                
                for item in Variables.blockedArrays{
                    //                    같은 라인에 있는 경우
                    if Int(item.position.y) == -yValue{
                        if let removeItem = Variables.blockedArrays.firstIndex(of: item){
                            Variables.blockedArrays.remove(at: removeItem)
                            var action = SKAction()
                            action = SKAction.fadeOut(withDuration: 0.1)
                            item.run(action){
                                item.removeFromParent()
                            }
                        }
                    }
                    //                    현재 라인보다 위에 있을 경우
                    if Int(item.position.y) > -yValue{
                        var action = SKAction()
                        action = SKAction.moveBy(x: 0, y: -CGFloat(Variables.brickValue.brickSize), duration: 0.5)
                        item.run(action)
                        
                    }
                }
                
            }
        }
        
        if isGameOver(deadLine: Variables.dy){
            //        블럭 새로 생성
            NextBricks().nextBrickMoveLeft()
            _ = BrickGenerator()
        }
    }
    
    

    
    //    벽이면 return 하지 않는다.
    func isbrickDownable() -> Bool{
        for item in Variables.brickArrays{
            let x = Int(item.x) + Variables.dx
            let y = Int(item.y) + Variables.dy
            if Variables.backarrays[y + 1][x] == 2{
                return false
            }
        }
        return true
    }
    
    
    
    //   게임오버
    func isGameOver(deadLine : Int) -> Bool {
        if deadLine > 2{
            return true
        }else{
            if let scene = GameOver(fileNamed: "GameOver"){
               
                // 점수를 게임오버에 전달
                scene.score = totalScore
                let defaults = UserDefaults.standard
                scene.bestScore = defaults.integer(forKey: "BestScore")
                
                if totalScore > scene.bestScore {
                    defaults.set(totalScore, forKey: "BestScore")
                    scene.bestScore = defaults.integer(forKey: "BestScore")
                }
                
                
                
                // 오른쪽 방향으로 1초동안 보냄
                let transition = SKTransition.moveIn(with: .right, duration: 1)
                
                Variables.scene.view?.presentScene(scene , transition: transition)
            }
            print("GameOver")
            return false
        }
    }
    // 효과 추가
    func fire(position : CGPoint) {
        let fire = SKEmitterNode(fileNamed: "Fire.sks")
        fire?.particlePosition = position
        fire?.particlePositionRange = CGVector(dx: Int(Variables.scene.frame.width) -
                                                Variables.brickValue.brickSize * 2, dy: Variables.brickValue.brickSize)
        
        Variables.scene.addChild(fire!)
        DispatchQueue.main.asyncAfter(deadline: .now() + 2){
            fire?.removeFromParent()
        }
        
    }
}

