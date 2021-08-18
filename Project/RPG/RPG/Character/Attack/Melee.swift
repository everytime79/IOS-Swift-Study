import SpriteKit
import GameplayKit

extension Character {
  
    func Attack_Melee(){
        
        let AttackBody = Character(imageNamed: "Attack_MeleeE1")
        AttackBody.zPosition = 1
        
        self.addChild(AttackBody)
        Attack_Melee_Animation(AttackBody: AttackBody)
        
        // Action
        let WaitAction = SKAction.wait(forDuration: 0.2)
        let RemoveAction = SKAction.run { AttackBody.removeFromParent()}
        //WaitAction 이 끝나야, Remove 하도록 sequence
        AttackBody.run(SKAction.sequence([WaitAction, RemoveAction]))
        
        // Delay
        let MoveWaitAction = SKAction.wait(forDuration: 0.2)
        let MoveDelayAction = SKAction.run { self.MoveDelayIs = false}
        
        let AttackWaitAction = SKAction.wait(forDuration: 0.5)
        let AttackDelayAction = SKAction.run { self.MoveDelayIs = false}
        
        Function_DelayEffect(Button: "AttackButton", Delay: 0.5)
        MoveDelayIs = true
        AttackDelayIs = true
        
    }
    
    func Attack_Melee_Animation(AttackBody: Character){
        
        if self.AttackDirection == .E {
            AttackBody.position = CGPoint(x: 15, y: -12)
            AttackBody.run(SKAction(named: "Attack_MeleeE")!) //!는 해당하는 액션이 반드시 있다.
        } else if self.AttackDirection == .W {
            AttackBody.position = CGPoint(x: -15, y: -12)
            AttackBody.run(SKAction(named: "Attack_MeleeW")!) //!는 해당하는 액션이 반드시 있다.
        } else if self.AttackDirection == .S {
            AttackBody.position = CGPoint(x: -15, y: -12)
            AttackBody.run(SKAction(named: "Attack_MeleeS")!) //!는 해당하는 액션이 반드시 있다.
        } else if self.AttackDirection == .N {
            AttackBody.position = CGPoint(x: -15, y: 12)
            AttackBody.run(SKAction(named: "Attack_MeleeN")!) //!는 해당하는 액션이 반드시 있다.
        }
    }
}
