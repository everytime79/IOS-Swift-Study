import SpriteKit
import GameplayKit

extension GameScene {
    
    func didBegin(_ contact: SKPhysicsContact) {
        
// MARK: - Attack
        
        //Player
        if contact.bodyA.categoryBitMask == BodyType.PlayerAttack.rawValue && contact.bodyB.categoryBitMask == BodyType.Monster.rawValue {
            
            let PlayerAttackBody = contact.bodyA.node as! Character
            let Monster = contact.bodyB.node as! Character
            
            if PlayerAttackBody.AttackDamageIs == true {
                
                PlayerAttackBody.AttackDamageIs = false
                Monster.Damage_Effect(Attacker: Player, Defender: Monster)
                PlayerAttackBody.removeFromParent()
                
            }

            
        } else if contact.bodyB.categoryBitMask == BodyType.PlayerAttack.rawValue && contact.bodyA.categoryBitMask == BodyType.Monster.rawValue {
            
            let PlayerAttackBody = contact.bodyB.node as! Character
            let Monster = contact.bodyA.node as! Character
            
            if PlayerAttackBody.AttackDamageIs == true {
                
                PlayerAttackBody.AttackDamageIs = false
                Monster.Damage_Effect(Attacker: Player, Defender: Monster)
                PlayerAttackBody.removeFromParent()
                
            }
            
        }
        
        //Monster
        if contact.bodyA.categoryBitMask == BodyType.MonsterAttack.rawValue && contact.bodyB.categoryBitMask == BodyType.Player.rawValue {
            
            
        } else if contact.bodyB.categoryBitMask == BodyType.MonsterAttack.rawValue && contact.bodyA.categoryBitMask == BodyType.Player.rawValue {
            
            
        }
    }
}
