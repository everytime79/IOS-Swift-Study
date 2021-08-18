import SpriteKit
import GameplayKit

extension Character {
 
    func Function_Move() {
        
        switch CurrentDirection {
        
        case .ST:
            SpeedX = 0
            SpeedY = 0
            
            if CurrentDirection != LastDirection {
                
                removeAction(forKey: "Move")
                // 애니메이션 삭제 후,
                
                if LastDirection == Direction.E {
                    
                    self.texture = SKTexture(imageNamed: "RedSwanMoveE1")
                }
                
                if LastDirection == Direction.W {
                    
                    self.texture = SKTexture(imageNamed: "RedSwanMoveW1")
                }
                
                if LastDirection == Direction.S {
                    
                    self.texture = SKTexture(imageNamed: "RedSwanMoveS1")
                }
                
                if LastDirection == Direction.N {
                    
                    self.texture = SKTexture(imageNamed: "RedSwanMoveN1")
                } //최종 방향에 해당하는 곳으로 쳐다보게 한다.
                
                AttackDirection = LastDirection
            }
            
            LastDirection = CurrentDirection
            
        case .E:
            SpeedX = SP
            SpeedY = 0
            
            // 동쪽으로 가는 동안,
            if CurrentDirection != LastDirection {
                
                let MoveAtlas = SKTextureAtlas(named: "RedSwanMoveE")
                var MoveFrame = [SKTexture]()
                
                //반복 실행
                for i in 1...MoveAtlas.textureNames.count / 2 {
                    //1부터 4까지
                    let TextureName = "RedSwanMoveE" + "\(i)" //i는 숫자임으로 문자로 바꿔준다.
                    MoveFrame .append(MoveAtlas.textureNamed(TextureName))
                }
                
                let MoveAnimationAction = SKAction.repeatForever(SKAction.animate(with: MoveFrame, timePerFrame: 0.125))
                // repeat한다. with 무브프레임, 바뀌는 시간 0.125
                self.run(MoveAnimationAction, withKey: "Move")
                // 캐릭터가 실행, 그리고 이 액션의 이름은 Move
                
                AttackDirection = CurrentDirection
            }
            LastDirection = CurrentDirection
            
        case .W:
            SpeedX = -SP
            SpeedY = 0
            
            if CurrentDirection != LastDirection {
                
                let MoveAtlas = SKTextureAtlas(named: "RedSwanMoveW")
                var MoveFrame = [SKTexture]()
                
                for i in 1...MoveAtlas.textureNames.count / 2 {

                    let TextureName = "RedSwanMoveW" + "\(i)"
                    MoveFrame .append(MoveAtlas.textureNamed(TextureName))
                }
                
                let MoveAnimationAction = SKAction.repeatForever(SKAction.animate(with: MoveFrame, timePerFrame: 0.125))
                
                self.run(MoveAnimationAction, withKey: "Move")
                
                AttackDirection = CurrentDirection
            }
            LastDirection = CurrentDirection
            
        case .S:
            SpeedX = 0
            SpeedY = -SP
            
            if CurrentDirection != LastDirection {
                
                let MoveAtlas = SKTextureAtlas(named: "RedSwanMoveS")
                var MoveFrame = [SKTexture]()
                
                for i in 1...MoveAtlas.textureNames.count / 2 {

                    let TextureName = "RedSwanMoveS" + "\(i)"
                    MoveFrame .append(MoveAtlas.textureNamed(TextureName))
                }
                
                let MoveAnimationAction = SKAction.repeatForever(SKAction.animate(with: MoveFrame, timePerFrame: 0.125))
                
                self.run(MoveAnimationAction, withKey: "Move")
                
                AttackDirection = CurrentDirection
            }
            LastDirection = CurrentDirection
            
        case .N:
            SpeedX = 0
            SpeedY = SP
            
            if CurrentDirection != LastDirection {
                
                let MoveAtlas = SKTextureAtlas(named: "RedSwanMoveN")
                var MoveFrame = [SKTexture]()
                
                for i in 1...MoveAtlas.textureNames.count / 2 {

                    let TextureName = "RedSwanMoveN" + "\(i)"
                    MoveFrame .append(MoveAtlas.textureNamed(TextureName))
                }
                
                let MoveAnimationAction = SKAction.repeatForever(SKAction.animate(with: MoveFrame, timePerFrame: 0.125))
                
                self.run(MoveAnimationAction, withKey: "Move")
                
                AttackDirection = CurrentDirection
            }
            LastDirection = CurrentDirection
            
        }
        
        if self.MoveDelayIs == false { // 만약 딜레이가 없다면, 그때 움직임을 주어라.
            self.position = CGPoint(x: self.position.x + SpeedX, y: self.position.y + SpeedY)

        }
    }
}
