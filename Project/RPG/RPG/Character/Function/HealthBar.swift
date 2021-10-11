import SpriteKit
import GameplayKit

extension Character {

    func Function_Healthbar() {
        
        let HealthBar = SKSpriteNode(imageNamed: "HPBar")
        HealthBar.zPosition = 2
        HealthBar.position = CGPoint(x: 0, y: self.size.height / 2 + 10)
        self.addChild(HealthBar)
    }
    
}
