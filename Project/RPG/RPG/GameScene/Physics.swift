
import SpriteKit
import GameplayKit

extension GameScene {
    
    func didBegin(_ contact: SKPhysicsContact) {
        
// MARK: - Attack
    
    // Player
        if contact.bodyA.categoryBitMask == BodyType.PlayerAttack.rawValue && contact.bodyB.categoryBitMask == BodyType.Monster.rawValue {
            
            let PlayerAttackBody = contact.bodyA.node as! Character
            let Monster = contact.bodyB.node as! Character
            
            if PlayerAttackBody.AttackDamageIs == true {
                
                PlayerAttackBody.AttackDamageIs = false
                Monster.Damage_Point(Attacker: Player, Defender: Monster, MonsterMinionGroup: MonsterMinionGroup)
                PlayerAttackBody.removeFromParent()
            }
            
        } else if contact.bodyB.categoryBitMask == BodyType.PlayerAttack.rawValue && contact.bodyA.categoryBitMask == BodyType.Monster.rawValue {
            
            let PlayerAttackBody = contact.bodyB.node as! Character
            let Monster = contact.bodyA.node as! Character
            
            if PlayerAttackBody.AttackDamageIs == true {
                
                PlayerAttackBody.AttackDamageIs = false
                Monster.Damage_Point(Attacker: Player, Defender: Monster, MonsterMinionGroup: MonsterMinionGroup)
                PlayerAttackBody.removeFromParent()
            }
        }
        
        // Monster
            if contact.bodyA.categoryBitMask == BodyType.MonsterAttack.rawValue && contact.bodyB.categoryBitMask == BodyType.Player.rawValue {
                
                let MonsterAttackBody = contact.bodyA.node as! Character
                let Player = contact.bodyB.node as! Character
                
                if MonsterAttackBody.AttackDamageIs == true {
                    
                    MonsterAttackBody.AttackDamageIs = false
                    Player.Damage_Point(Attacker: Monster, Defender: Player, MonsterMinionGroup: MonsterMinionGroup)

                    MonsterAttackBody.removeFromParent()
                }

            } else if contact.bodyB.categoryBitMask == BodyType.MonsterAttack.rawValue && contact.bodyA.categoryBitMask == BodyType.Player.rawValue {
                
                let MonsterAttackBody = contact.bodyB.node as! Character
                let Player = contact.bodyA.node as! Character
                
                if MonsterAttackBody.AttackDamageIs == true {
                    
                    MonsterAttackBody.AttackDamageIs = false
                    Player.Damage_Point(Attacker: Monster, Defender: Player, MonsterMinionGroup: MonsterMinionGroup)
                    MonsterAttackBody.removeFromParent()
                }
            }
// MARK: - Field
        
        // Gold
        if contact.bodyA.categoryBitMask == BodyType.Player.rawValue && contact.bodyB.categoryBitMask == BodyType.Gold.rawValue {
            
            if let Gold = contact.bodyB.node as? Character {
                
                Gold.removeFromParent()
                
                if Gold.GoldActiveIs == true {
                    
                    Gold.GoldActiveIs = false
                    Gold.Spawn_Gold_Effect(GoldAmount: Gold.GoldAmount)
                    Player.Gold += Gold.GoldAmount
                    Status_Gold.text = "\(Player.Gold)"
                }
            }
                
        } else if contact.bodyB.categoryBitMask == BodyType.Player.rawValue && contact.bodyA.categoryBitMask == BodyType.Gold.rawValue {
            
            if let Gold = contact.bodyA.node as? Character {
                
                Gold.removeFromParent()
                
                if Gold.GoldActiveIs == true {
                    
                    Gold.GoldActiveIs = false
                    Gold.Spawn_Gold_Effect(GoldAmount: Gold.GoldAmount)
                    Player.Gold += Gold.GoldAmount
                    Status_Gold.text = "\(Player.Gold)"
                }
            }
        }
// Field 끝
    }
}
