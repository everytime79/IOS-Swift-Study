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
        Damage_Death(Attacker: Attacker, Defender: Defender, MonsterMinionGroup: MonsterMinionGroup)
    
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
    func Damage_Death(Attacker: Character, Defender: Character, MonsterMinionGroup: [Character]) {
        
        if Defender.CurrentHP <= 0 {
            
            if Defender.Sort == "Player" {
                
                
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

                
                // Gold Spawn
                Spawn_Gold(Monster: Defender)
                
                // Level Up
                LevelUp(Attacker: Attacker, Defender: Defender)
                
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
        
        Scene.addChild(Gold)
        
    }
    
    // Spawn Gold Effect
    func Spawn_Gold_Effect(GoldAmount: Int) {
        
        let GoldLabel = SKLabelNode(fontNamed: "04b_19")
        
        GoldLabel.zPosition = 98
        GoldLabel.position = self.position
        GoldLabel.fontSize = 25
        GoldLabel.fontColor = UIColor.yellow
        GoldLabel.text = "\(GoldAmount)"
        
        Scene.addChild(GoldLabel)
        
        let GainGoldAction = SKAction(named: "Effect_GoldGain")
        let RemoveAction = SKAction.run { GoldLabel.removeFromParent()}
        
        GoldLabel.run(SKAction.sequence([GainGoldAction!, RemoveAction]))
    }
// <- Gold
// MARK: - Level Up

    // Level Up
    func LevelUp(Attacker: Character, Defender: Character) {
        
        let CurrentLV = Attacker.LV
        let CurrentEXP = Attacker.EXP
        let ReqEXP = 5 * CurrentLV * CurrentLV
        let GainEXP = Defender.EXP
        
        Attacker.EXP = CurrentEXP + GainEXP
        
        if Attacker.EXP >= ReqEXP {
            
            Attacker.LV += 1
            Attacker.EXP = 0
            Attacker.LevelUp_Effect()
        }
    }
    
    // Level Up Effect
    func LevelUp_Effect() {
        
        Scene.Status_LV.text = "LV.\(Int(self.LV))"
        
        let LevelLabel = SKLabelNode(fontNamed: "04b_19")
        
        
        LevelLabel.zPosition = 98
        LevelLabel.position = CGPoint(x: 0, y: self.size.height)
        LevelLabel.fontSize = 30
        LevelLabel.fontColor = UIColor(red: 255/255, green: 210/255, blue: 65/255, alpha: 1.0)
        LevelLabel.text = "Level UP"
        
        Scene.addChild(LevelLabel)
        
        let LevelUpAction = SKAction(named: "Effect_LV")
        let RemoveAction = SKAction.run { LevelLabel.removeFromParent()}
        
        LevelLabel.run(SKAction.sequence([LevelUpAction!, RemoveAction]))
    }
// <- Level Up
}
