import SpriteKit
import GameplayKit

extension GameScene {
    
    func didBegin(_ contact: SKPhysicsContact) {
        
// MARK: - Attack
        
        //Player
        if contact.bodyA.categoryBitMask == BodyType.PlayerAttack.rawValue && contact.bodyB.categoryBitMask == BodyType.Monster.rawValue {
            
            print("Player Attack")
            
        } else if contact.bodyB.categoryBitMask == BodyType.PlayerAttack.rawValue && contact.bodyA.categoryBitMask == BodyType.Monster.rawValue {
            
            print("Player Attack")
            
        }
        
        //Monster
        if contact.bodyA.categoryBitMask == BodyType.MonsterAttack.rawValue && contact.bodyB.categoryBitMask == BodyType.Player.rawValue {
            
            print("Player Attack")
            
        } else if contact.bodyB.categoryBitMask == BodyType.MonsterAttack.rawValue && contact.bodyA.categoryBitMask == BodyType.Player.rawValue {
            
            print("Player Attack")
            
        }
    }
}
