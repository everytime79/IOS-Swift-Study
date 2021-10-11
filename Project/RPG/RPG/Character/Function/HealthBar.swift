import SpriteKit
import GameplayKit

extension Character {

    func Function_Healthbar() {
        
        let HealthBar = SKSpriteNode(imageNamed: "HPBar")
        HealthBar.zPosition = 2
        HealthBar.position = CGPoint(x: 0, y: self.size.height / 2 + 10)
        self.addChild(HealthBar)
        
        // Health
        var Health = SKSpriteNode()
        
        if self.Sort == "Player" {
            
            Health = SKSpriteNode(imageNamed: "HP_Player")

        } else if self.Sort == "Monster" {
            
            Health = SKSpriteNode(imageNamed: "HP_Monster")
            
        }
        
        Health.zPosition = 3
        Health.position = CGPoint(x: -Health.size.width / 2, y: self.size.height / 2 + 10)
        Health.name = "HP"
        Health.anchorPoint = CGPoint(x: 0, y: 0.5)
        self.addChild(Health)
        
    }
    
}
