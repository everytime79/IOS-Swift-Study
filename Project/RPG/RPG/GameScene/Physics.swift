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
            
            print("Player Attack")
            
        } else if contact.bodyA.categoryBitMask == BodyType.PlayerAttack.rawValue && contact.bodyB.categoryBitMask == BodyType.Monster.rawValue {
            
            print("Player Attack")
            
        }
        
        //Monster
        if contact.bodyA.categoryBitMask == BodyType.MonsterAttack.rawValue && contact.bodyB.categoryBitMask == BodyType.Player.rawValue {
            
            print("Monster Attack")
            
        } else if contact.bodyB.categoryBitMask == BodyType.MonsterAttack.rawValue && contact.bodyA.categoryBitMask == BodyType.Player.rawValue {
            
            print("Monster Attack")
            
        }
    }
}
