//
//  GameScene.swift
//  TetrisGame Shared
//
//  Created by 박성수 on 2020/09/20.
//

// 주 메인 화면, 게임을 동작할 화면

import SpriteKit
import GameKit

class GameScene: SKScene {
    
    var leftButton : LeftButton?
    var rightButton : RightButton?
    var rotationButton : RotationButton?
    var downButton : DownButton?
    var stopButton : StopButton?
    
    var sounds : Sounds?
    var updateTime = 0.0
    var a = 0.5
    
    override func didMove(to view: SKView) {
        setting()
        //        checkBrick()
    }
    //checkBrick 더이상 필요 x
    /*
     func checkBrick(){
     let arrays = Variables.backarrays
     for item in arrays{
     print(item)
     }
     }
     */
    
    func setting(){
        Variables.scene = self
        _ = BackGround()
        NextBricks().addBrick()
        _ = BrickGenerator()
        
        //        메인 클래스에 leftButton 인스턴스 생성
        leftButton = LeftButton()
        rightButton = RightButton()
        rotationButton = RotationButton()
        downButton = DownButton()
        stopButton = StopButton()
        sounds = Sounds()
        lightEffect()
    }
    // brick에 조명 효과
    func lightEffect(){
        let light = SKLightNode()
        light.position = CGPoint(x: Int(view!.frame.width) / 2, y: -100)
        light.ambientColor = .white
        light.lightColor = .white
        light.categoryBitMask = 0b0001
        addChild(light)
    }
    
    override func update(_ currentTime: TimeInterval) {
        if updateTime == 0{
            updateTime = currentTime
        }
        
        if currentTime - updateTime > a{
            updateTime = currentTime
            if !Variables.isPause{ //멈춤이 아닐경우
                downButton?.brickDwon()
                
                //난이도 조절
                if downButton!.totalScore > 200 {
                    a = 0.4
                    downButton!.point = 200
                    if downButton!.totalScore > 400 {
                        a = 0.3
                        downButton!.point = 400
                        if downButton!.totalScore > 600 {
                            a = 0.2
                            downButton!.point = 800
                            if downButton!.totalScore > 800 {
                                a = 0.1
                                downButton!.point = 1600
                            }

                        }
                    }
                }
                    
                
            }
        }
        
    }
    
    
    //    터치 이벤트 처리
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        let location = touch?.location(in: self)
        let node = nodes(at: location!)
        for item in node{
            if item.name == "left"{
                leftButton?.brickMoveLeft()
                sounds?.buttonSounds(buttonName: "move")
            }
            if item.name == "right"{
                rightButton?.brickMoveRight()
                sounds?.buttonSounds(buttonName: "move")
                
            }
            if item.name == "rotation"{
                rotationButton?.brickRotation()
                sounds?.buttonSounds(buttonName: "rotation")
                
            }
            
            if item.name == "down"{
                //            다운이 가능하면, brickDown을 한다.
                while (downButton?.isbrickDownable())! {
                    downButton?.brickDwon()
                    print("Down Button")
                }
                sounds?.buttonSounds(buttonName: "down")
                downButton?.anim()

                            
            }
            
            if item.name == "stop"{
                stopButton?.brickStop()
                if !Variables.isPause{ //멈춤이 아닐경우
                    sounds?.soundPlay()
                }else{
                    sounds?.soundStop()
                }
            }
        }
    }
}
