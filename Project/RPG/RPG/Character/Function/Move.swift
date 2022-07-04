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
                
                removeAction(forKey: "Move")
                // 애니메이션 삭제 후,
                
                if LastDirection == Direction.E {
                    
                    self.texture = SKTexture(imageNamed: self.Costume + "MoveE1")
                }
                
                if LastDirection == Direction.W {
                    
                    self.texture = SKTexture(imageNamed: self.Costume + "MoveW1")
                }
                
                if LastDirection == Direction.S {
                    
                    self.texture = SKTexture(imageNamed: self.Costume + "MoveS1")
                }
                
                if LastDirection == Direction.N {
                    
                    self.texture = SKTexture(imageNamed: self.Costume + "MoveN1")
                } //최종 방향에 해당하는 곳으로 쳐다보게 한다.
                
                AttackDirection = LastDirection
            }
            
            LastDirection = CurrentDirection
            
        case .E:
            SpeedX = SP
            SpeedY = 0
            
            // 동쪽으로 가는 동안,
            if CurrentDirection != LastDirection {
                
            
                        
                }
                
       
                
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

