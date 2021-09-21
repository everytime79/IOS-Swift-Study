import SpriteKit
import GameplayKit

extension Character {
  
    func Attack_Standoff(){
        
        let AttackBody = Character(imageNamed: "Attack_StandoffE")
        AttackBody.zPosition = 1
        
        self.addChild(AttackBody)
        Attack_Standoff_Animation(AttackBody: AttackBody)
        
        // Action -> 어택에 대한 애니메이션
        let WaitAction = SKAction.wait(forDuration: 0.2)
        let RemoveAction = SKAction.run { AttackBody.removeFromParent()}
        //WaitAction 이 끝나야, Remove 하도록 sequence
        AttackBody.run(SKAction.sequence([WaitAction, RemoveAction]))
        
        // Delay -> 딜레이에 대한 애니메이션
        let MoveWaitAction = SKAction.wait(forDuration: 0.2)
        let MoveDelayAction = SKAction.run { self.MoveDelayIs = false}
        
        let AttackWaitAction = SKAction.wait(forDuration: 0.5)
        let AttackDelayAction = SKAction.run { self.AttackDelayIs = false}
        
        Function_DelayEffect(Button: "AttackButton", Delay: 0.5)
        MoveDelayIs = true
        AttackDelayIs = true
        
        self.run(SKAction.sequence([MoveWaitAction, MoveDelayAction])) // 0.2 초 기다린 후 -> 다시 가능하게
        self.run(SKAction.sequence([AttackWaitAction, AttackDelayAction])) // 0.5 초 기다린 후 -> 다시 가능하게
        
    }
    
    func Attack_Standoff_Animation(AttackBody: Character){
        
        if self.AttackDirection == .E {
            AttackBody.position = CGPoint(x: 15, y: -12)
        } else if self.AttackDirection == .W {
            AttackBody.position = CGPoint(x: -15, y: -12)
        } else if self.AttackDirection == .S {
            AttackBody.position = CGPoint(x: -15, y: -12)
        } else if self.AttackDirection == .N {
            AttackBody.position = CGPoint(x: -15, y: 12)
        }
    }
}
