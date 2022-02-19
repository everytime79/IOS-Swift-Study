import SpriteKit
import GameplayKit

extension Character {
  
    func Attack_Standoff(){
        
        let AttackBody = Character(imageNamed: "Attack_StandoffE")
        AttackBody.zPosition = 1
        
        self.addChild(AttackBody)
        Attack_Standoff_Animation(AttackBody: AttackBody)
        
        // Range //
        let RangeBody = Character(color: UIColor.clear, size: CGSize(width: 50, height: 50))
        
        if self.Sort == "Player" {
            
            RangeBody.PhysicsBody_PlayerAttack()
            
        } else if self.Sort == "Monster" {
            
            RangeBody.PhysicsBody_MonsterAttack()
        }
        
