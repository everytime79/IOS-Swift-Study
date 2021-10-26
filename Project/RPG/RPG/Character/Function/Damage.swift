import SpriteKit
import GameplayKit

extension Character {
    
// MARK: - Damage Point
    func Damage_Point(Attacker: Character, Defender: Character, MonsterMinionGroup: [Character]) {
    
    // Damage Point
        let AT = Attacker.AT
        let AR = Attacker.Luck
        let DF = Defender.DF
        let DR = Defender.Luck
        
        let ATRate = (AT * AR / 100).rounded(.down) // 정수로 계산되게끔, round() 반올림
        let ATRange = UInt32((AT - ATRate).rounded(.down))
        let DFRate = (DF * DR / 100).rounded(.down)
        let DFRange = UInt32((DF - DFRate).rounded(.down))
        
        let ATPoint = Int(arc4random_uniform(ATRange + 1)) + Int(ATRate)
        let DFPoint = Int(arc4random_uniform(DFRange + 1)) + Int(DFRate)
        
        let DamagePoint = ATPoint - DFPoint
        
    // Do Damage
        Defender.CurrentHP -= CGFloat(DamagePoint)
        
    // Damage Label
        Damage_Lable(Attacker: Attacker, Defender: Defender, DamagePoint: DamagePoint)
        
    // Damage Death
        Damage_Death(Defender: Defender, MonsterMinionGroup: MonsterMinionGroup)
    
    }
    
// MARK: - Damage Label
    func Damage_Lable(Attacker: Character, Defender: Character, DamagePoint: Int) {
        
        // Damage Label
            let DamageLabel = SKLabelNode(fontNamed: "04b_19")
            DamageLabel.zPosition = 13 // 상단에 출력하기 위함
            DamageLabel.fontSize = 30 // 글자 크기
            DamageLabel.text = "\(DamagePoint)"
            
            if self.Sort == "Player" {
                
                DamageLabel.fontColor = UIColor.red
                
            } else if self.Sort == "Monster" {
                
                DamageLabel.fontColor = UIColor.cyan
                
            }
            
            Defender.addChild(DamageLabel)
            
            let DamageAction = SKAction(named: "Effect_Damage")
            let RemoveAction = SKAction.run { DamageLabel.removeFromParent() }
            
            DamageLabel.run(SKAction.sequence([DamageAction!, RemoveAction]))

    }
    
    
    
// MARK: - Death
    func Damage_Death(Defender: Character, MonsterMinionGroup: [Character]) {
        
        if Defender.CurrentHP <= 0 {
            
            if Defender.Sort == "Player" {
                
                Defender.colorBlendFactor = 1
                Defender.alpha = 1
                Defender.color = UIColor.red
                
                let WaitAction = SKAction.wait(forDuration: 0.5)
                let DeathAction = SKAction.run {
                    
                    Defender.removeFromParent()
                    Defender.physicsBody = nil
                }
                
                self.run(SKAction.sequence([WaitAction, DeathAction]))
                print("Game Over")
                
            } else if Defender.Sort == "Monster" {
                
                let DefenderNumber = Defender.Number
                let DefenderMinion = MonsterMinionGroup[DefenderNumber]
                
                DefenderMinion.removeFromParent()
                
                Defender.colorBlendFactor = 1
                Defender.alpha = 1
                Defender.color = UIColor.red
                
                let WaitAction = SKAction.wait(forDuration: 0.5)
                let DeathAction = SKAction.run {
                    
                    Defender.removeFromParent()
                    Defender.physicsBody = nil
                    
                }
                
                self.run(SKAction.sequence([WaitAction, DeathAction]))

            }
        }
    }
    
// MARK: - Gold
    // Spawn Gold
    func Spawn_Gold(Monster: Character) {
        
        let GoldAmount = arc4random_uniform(99) + 1
        let Gold = Character(imageNamed: "Gold")
        
        
        Gold.zPosition = 98
        Gold.position = Monster.position
        Gold.GoldAmount = Int(GoldAmount)
        Gold.PhysicsBody_Gold()
        Gold.run(SKAction(named: "Effect_Gold")!)
    }
}
