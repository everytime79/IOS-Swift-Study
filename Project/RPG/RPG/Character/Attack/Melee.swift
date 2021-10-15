import SpriteKit
import GameplayKit

extension Character {
  
    func Attack_Melee(){
        
        let AttackBody = Character(imageNamed: "Attack_MeleeE1")
        AttackBody.zPosition = 1
        
        self.addChild(AttackBody)
        Attack_Melee_Animation(AttackBody: AttackBody)
        
        // Range
        let RangeBody = Character(color: UIColor.clear, size: CGSize(width: 50, height: 50))
        
        if self.Sort == "Player" {
            
            RangeBody.PhysicsBody_PlayerAttack()
            
        } else if self.Sort == "Monster" {
            
            RangeBody.PhysicsBody_MonsterAttack()
        
        }
        
        self.addChild(RangeBody)
        Attack_Melee_Range(RangeBody: RangeBody)
        
        // Action -> 어택에 대한 애니메이션
        let WaitAction = SKAction.wait(forDuration: 0.2)
        let RemoveAction = SKAction.run { AttackBody.removeFromParent(); RangeBody.removeFromParent()}
        //WaitAction 이 끝나야, Remove 하도록 sequence
        AttackBody.run(SKAction.sequence([WaitAction, RemoveAction]))
        
        // Delay -> 딜레이에 대한 애니메이션
        let MoveWaitAction = SKAction.wait(forDuration: 0.2)
        let MoveDelayAction = SKAction.run { self.MoveDelayIs = false}
        
        let AttackWaitAction = SKAction.wait(forDuration: 0.5)
        let AttackDelayAction = SKAction.run { self.AttackDelayIs = false}
        
        MoveDelayIs = true
        AttackDelayIs = true
        
        self.run(SKAction.sequence([MoveWaitAction, MoveDelayAction])) // 0.2 초 기다린 후 -> 다시 가능하게
        self.run(SKAction.sequence([AttackWaitAction, AttackDelayAction])) // 0.5 초 기다린 후 -> 다시 가능하게
        
    }
    
    func Attack_Melee_Animation(AttackBody: Character){
        
        if self.AttackDirection == .E {
            AttackBody.position = CGPoint(x: 15, y: -12)
            AttackBody.run(SKAction(named: "Attack_MeleeE")!) //!는 해당하는 액션이 반드시 있다.
        } else if self.AttackDirection == .W {
            AttackBody.position = CGPoint(x: -15, y: -12)
            AttackBody.run(SKAction(named: "Attack_MeleeW")!) 
        } else if self.AttackDirection == .S {
            AttackBody.position = CGPoint(x: -15, y: -12)
            AttackBody.run(SKAction(named: "Attack_MeleeS")!)
        } else if self.AttackDirection == .N {
            AttackBody.position = CGPoint(x: -15, y: 12)
            AttackBody.run(SKAction(named: "Attack_MeleeN")!)
        }
    }
    
    func Attack_Melee_Range(RangeBody: Character) {
        
        let Distance = CGFloat(50)
        
        if self.AttackDirection == .E {
            
            let RangeAction = SKAction.move(by: CGVector(dx: Distance, dy: 0), duration: 0.2)
            RangeBody.run(RangeAction)
            
        } else if self.AttackDirection == .W {
            
            let RangeAction = SKAction.move(by: CGVector(dx: -Distance, dy: 0), duration: 0.2)
            RangeBody.run(RangeAction)

        } else if self.AttackDirection == .S {
            
            let RangeAction = SKAction.move(by: CGVector(dx: 0, dy: -Distance), duration: 0.2)
            RangeBody.run(RangeAction)

        } else if self.AttackDirection == .N {
            
            let RangeAction = SKAction.move(by: CGVector(dx: 0, dy: Distance), duration: 0.2)
            RangeBody.run(RangeAction)
        }
    }


}
