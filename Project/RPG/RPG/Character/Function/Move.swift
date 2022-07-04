import SpriteKit
import GameplayKit

extension Character {
//방향별 움직임
    func Function_Move() {
        
        switch CurrentDirection {
        
        case .ST:
            SpeedX = 0
            SpeedY = 0
            
            if CurrentDirection != LastDirection {
           
            }
            
            LastDirection = CurrentDirection
            
        case .E:
            SpeedX = SP
            SpeedY = 0
            
            // 동쪽으로 가는 동안,
            if CurrentDirection != LastDirection {
                
                let MoveAtlas = SKTextureAtlas(named: self.Costume + "MoveE")
                var MoveFrame = [SKTexture]()
                
                //반복 실행
                for i in 1...MoveAtlas.textureNames.count / 2 {
                    //1부터 4까지
                    let TextureName = self.Costume + "MoveE" + "\(i)" //i는 숫자임으로 문자로 바꿔준다.
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
                
                let MoveAtlas = SKTextureAtlas(named: self.Costume + "MoveW")
                var MoveFrame = [SKTexture]()
                
                for i in 1...MoveAtlas.textureNames.count / 2 {

                    let TextureName = self.Costume + "MoveW" + "\(i)"
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
                
                let MoveAtlas = SKTextureAtlas(named: self.Costume + "MoveS")
                var MoveFrame = [SKTexture]()
                
                for i in 1...MoveAtlas.textureNames.count / 2 {

                    let TextureName = self.Costume + "MoveS" + "\(i)"
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
                
                let MoveAtlas = SKTextureAtlas(named: self.Costume + "MoveN")
                var MoveFrame = [SKTexture]()
                
                for i in 1...MoveAtlas.textureNames.count / 2 {

                    let TextureName = self.Costume + "MoveN" + "\(i)"
                    MoveFrame .append(MoveAtlas.textureNamed(TextureName))
                    
                }
                
                let MoveAnimationAction = SKAction.repeatForever(SKAction.animate(with: MoveFrame, timePerFrame: 0.125))
                
                self.run(MoveAnimationAction, withKey: "Move")
                
                AttackDirection = CurrentDirection
                
            }
            
            LastDirection = CurrentDirection

        }
        
        if self.MoveDelayIs == false { // 만약 딜레이가 없다면, 그때 움직임 true로 바뀌면 안움직임
            
            self.position = CGPoint(x: self.position.x + SpeedX, y: self.position.y + SpeedY)
            
        }
    }
}

