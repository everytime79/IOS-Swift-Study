import SpriteKit
import GameplayKit

extension Character {
    
    func Attack_Meteor() {
        
        let Position = [CGPoint(x: 0, y: 200),CGPoint(x: 150, y: 100),
                        CGPoint(x: -150, y: 100),CGPoint(x: 100, y: 0),
                        CGPoint(x: 200, y: 0),CGPoint(x: 0, y: -200),
                        CGPoint(x: 150, y: -100),CGPoint(x: -150, y: -100),
                        CGPoint(x: -100, y: 0),CGPoint(x: -200, y: 0)]
        
        for i in 0...9 {
            
            let AttackBody = Character(imageNamed: "Meteor1")
            AttackBody.position = CGPoint(x: self.position.x + Position[i].x, y: self.position.y + Position[i].y)
            AttackBody.zPosition = 1
            AttackBody.alpha = 0
            
            Scene.addChild(AttackBody)
            
            let FadeInAction = SKAction.fadeIn(withDuration: 1.5)
            let FallAction = SKAction.run { AttackBody.run(SKAction(named: "Attack_Meteor")!)}
            let WaitAction = SKAction.wait(forDuration: 0.2)
            let ShakeAction = SKAction.run { AttackBody.Attack_Meteor_Animation()}
            let RemoveAction = SKAction.run { AttackBody.removeFromParent()
                
            }
            let DamageAction = SKAction.run {
                
                // Range
                let RangeBody = Character(color:  UIColor.clear, size: CGSize(width: 50, height: 50))

                if self.Sort == "Player" {
                    
                    RangeBody.PhysicsBody_PlayerAttack()
                    
                } else if self.Sort == "Monster" {
                    
                    RangeBody.PhysicsBody_MonsterAttack()
                    
                }
                
                self.addChild(RangeBody)
            }
            
            AttackBody.run(SKAction.sequence([FadeInAction, FallAction, WaitAction, ShakeAction, DamageAction, RemoveAction]))
            
        }
            
        // Delay -> 딜레이에 대한 애니메이션
        let MoveWaitAction = SKAction.wait(forDuration: 0.2)
        let MoveDelayAction = SKAction.run { self.MoveDelayIs = false}
        
        let SkillWaitAction = SKAction.wait(forDuration: 5)
        let SkillDelayAction = SKAction.run { self.SkillDelayIs = false}
        
        MoveDelayIs = true
        SkillDelayIs = true
        
        
        
    }
        
    func Attack_Meteor_Animation() {
        
        let ShakeX1 = SKAction.move(by: CGVector.init(dx: -3, dy: 0), duration: 0.05)
        let ShakeX2 = SKAction.move(by: CGVector.init(dx: 3, dy: 0), duration: 0.05)
        let ShakeX3 = SKAction.move(by: CGVector.init(dx: -3, dy: 0), duration: 0.05)
        let ShakeX4 = SKAction.move(by: CGVector.init(dx: 3, dy: 0), duration: 0.05)
        
        let ShakeY1 = SKAction.move(by: CGVector.init(dx: 0, dy: -1), duration: 0.05)
        let ShakeY2 = SKAction.move(by: CGVector.init(dx: 0, dy: 1), duration: 0.05)
        let ShakeY3 = SKAction.move(by: CGVector.init(dx: 0, dy: -1), duration: 0.05)
        let ShakeY4 = SKAction.move(by: CGVector.init(dx: 0, dy: 1), duration: 0.05)
        
        LocalCamera.run(SKAction.sequence([ShakeX1,ShakeX2,ShakeX3,ShakeX4]))
        LocalCamera.run(SKAction.sequence([ShakeY1,ShakeY2,ShakeY3,ShakeY4]))
    }
}
