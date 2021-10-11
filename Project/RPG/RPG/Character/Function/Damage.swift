import SpriteKit
import GameplayKit

extension Character {
    
// MARK: - Damage Point
    func Damage_Point(Attacker: Character, Defender: Character) {
    
    // Damage Point
        let AT = Attacker.AT
        let AR = Attacker.Luck
        let DF = Defender.DF
        let DR = Defender.Luck
        
        let ATRate = (AT * AR / 100).rounded(.down) // 정수로 계산되게끔
        let ATRange = UInt32((AT - ATRate).rounded(.down))
        let DFRate = (DF * DR / 100).rounded(.down)
        let DFRange = UInt32((DF - DFRate).rounded(.down))
        
        let ATPoint = Int(arc4random_uniform(ATRange + 1)) + Int(ATRate)
        let DFPoint = Int(arc4random_uniform(DFRange + 1)) + Int(DFRate)
        
        let DamagePoint = ATPoint - DFPoint
        
    // Do Damage
        Defender.CurrentHP -= CGFloat(DamagePoint)
        
    
    }
    
// MARK: - Damage Label
    func Damage_Lable(Attacker: Character, Defender: Character, DamagePoint: Int) {
        
        // Damage Label
            let DamageLabel = SKLabelNode(fontNamed: "04b_19")
            DamageLabel.zPosition = 13 // 상단에 출력하기 위함
            DamageLabel.fontSize = 30 // 글자 크기
            DamageLabel.text = "\(DamagePoint)"
            
            if self.Sort == "Player" {
                
                DamageLabel.fontColor = UIColor.green
                
            } else if self.Sort == "Monster" {
                
                DamageLabel.fontColor = UIColor.red
                
            }
            
            Defender.addChild(DamageLabel)
            
            let DamageAction = SKAction(named: "Effect_Damage")
            let RemoveAction = SKAction.run { DamageLabel.removeFromParent() }
            
            DamageLabel.run(SKAction.sequence([DamageAction!, RemoveAction]))

    }
    
    
    
// MARK: - Death
    
    
}
